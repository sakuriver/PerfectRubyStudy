module SceneStandard
    class  MessageEndData
        @company_name
        @complete_message
        def initialize(company_name, complete_message)
            @company_name = company_name
            @complete_message = complete_message
        end
        def company_name
            @company_name
        end
        def complete_message
            @complete_message
        end
    end
end