parameters {
  string defaultValue: 'master', description: 'Please provide the branch to be built', name: 'git_branch', trim: false
}
properties([
    parameters([
        [$class: 'ChoiceParameter', 
            choiceType: 'PT_SINGLE_SELECT', 
            description: 'Select the Env Name from the Dropdown List', 
            filterLength: 1, 
            filterable: true, 
            name: 'environment1', 
            randomName: 'choice-parameter-5631314439613978', 
            script: [
                $class: 'GroovyScript', 
                fallbackScript: [
                    classpath: [], 
                    sandbox: false, 
                    script: 
                        'return[\'Could not get Env\']'
                ], 
                script: [
                    classpath: [], 
                    sandbox: false, 
                    script: 
                        'return["dev","qA","stage","prod"]'
                ]
            ]
        ], 
        [$class: 'ChoiceParameter', 
            choiceType: 'PT_SINGLE_SELECT', 
            description: 'Select the Service you want to build', 
            filterLength: 1, 
            filterable: true, 
            name: 'service_pipeline', 
            randomName: 'choice-parameter-5631314439613978', 
            script: [
                $class: 'GroovyScript', 
                fallbackScript: [
                    classpath: [], 
                    sandbox: false, 
                    script: 
                        'return[\'Could not get service\']'
                ], 
                script: [
                    classpath: [], 
                    sandbox: false, 
                    script: 
                        'return ["Onboarding", "BO", "Cards", "IB", "IMS"]'
                ]
            ]
        ]
         parameters {
                  activeChoiceParam('environment') {
                      description('select your choice')
                      choiceType('RADIO')
                      groovyScript {
                          script("return ["dev", "qa", "stage", "prod"]")
                          fallbackScript('return ["error"]')
                      }
                  }
                  activeChoiceReactiveParam('node') {
                      //description('select your choice')
                     // choiceType('RADIO')
                      groovyScript {
                          script("if(environment.equals("dev")){
                                return "$DEV_NODE<input type=\"hidden\" name=\"value\" value=\"$DEV_NODE\" />";
                                }
                                else if(environment.equals("qa")){
                                    return "$QA_NODE<input type=\"hidden\" name=\"value\" value=\"$QA_NODE\" />";
                                }
                                else if(environment.equals("stage")){
                                    return "$STAGE_NODE<input type=\"hidden\" name=\"value\" value=\"$STAGE_NODE\" />";
                                }
                                else if(environment.equals("prod")){
	                                return "$STAGE_NODE<input type=\"hidden\" name=\"value\" value=\"$STAGE_NODE\" />";
                                }
                          fallbackScript('return ["error"]')
                          referencedParameter('environment')
                      }
         }      
                 
    ])
])

        
