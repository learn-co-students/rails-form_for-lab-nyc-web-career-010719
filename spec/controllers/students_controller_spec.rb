require 'rails_helper'

describe StudentsController do
  ### monkeypatch from https://github.com/rails/rails/issues/34790
  if RUBY_VERSION>='2.6.0'
  if Rails.version < '5'
    class ActionController::TestResponse < ActionDispatch::TestResponse
      def recycle!
        # hack to avoid MonitorMixin double-initialize error:
        @mon_mutex_owner_object_id = nil
        @mon_mutex = nil
        initialize
      end
    end
  else
    puts "Monkeypatch for ActionController::TestResponse no longer needed"
  end
end
###
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new student" do
        expect{
          post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
        }.to change(Student,:count).by(1)
      end

      it "redirects to the new student" do
        post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
        expect(response).to redirect_to Student.last
      end
    end
  end

end
