class PostPolicy < ApplicationPolicy

  def index?
        user.present?
    end
    
    def show?
        user.present?
    end
    
    def create?
        user.present?
    end
    
    def new?
        user.present?
    end
    
    def update?
        user.present? && post.user == user
    end
    
    def edit?
        update?
    end
    
    def destroy?
        user.present? && (post.user == user)
    end
end