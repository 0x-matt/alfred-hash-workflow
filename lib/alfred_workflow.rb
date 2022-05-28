module Alfred
    class Workflow
        def output(title:, subtitle:, arg:)
            {
              items: [
                {
                  uid: "md_matrix_gen",
                  type: "string",
                  title: title,
                  subtitle: subtitle,
                  arg: arg,
                  icon: "",
                },
              ],
            }.to_json
        end
    end
end