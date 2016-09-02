# Translate
Gem for fast work with http://itranslate4.eu service

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'itranslate4'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install translate
```
Need generate initialize files for write your servise keys
```
$ rails generate translate
```
## API methods:
Get list of languages:

request:
```
Itranslate4.languages
```

responce:

"{

  \"src\":[
  
            \"af\",\"an\",\"ar\",\"ast\",\"bg\",\"bs\",
            
            \"ca\",\"da\",\"de\",\"el\",\"en\",\"eo\",
            
            \"es\",\"fr\",\"gl\",\"hr\",\"hu\",\"is\",
            
            \"it\",\"ja\",\"kk\",\"ko\",\"lv\",\"mk\",
            
            \"nl\",\"oc\",\"pl\",\"pt\",\"ru\",\"sl\",
            
            \"sr\",\"sv\",\"tr\",\"tt\",\"uk\",\"zh\"
            
          ],
          
  \"trg\"[
  
            \"af\",\"an\",\"ar\",\"ast\",\"bg\",\"bs\",
            
            \"ca\",\"da\",\"de\",\"el\",\"en\",\"eo\",
            
            \"es\",\"fr\",\"gl\",\"hr\",\"hu\",\"is\",
            
            \"it\",\"ja\",\"kk\",\"ko\",\"lv\",\"mk\",
            
            \"nl\",\"oc\",\"pl\",\"pt\",\"ru\",\"sl\",
            
            \"sr\",\"sv\",\"tr\",\"tt\",\"uk\",\"zh\"
            
         ],
         
   \"exclude\":[]}}"
   
   
Get translate text:

request:
```
Itranslate4.translate('en','ru','hello word','optional translate method from get_routes','pro.ts') 
```
data to translate:

 1 element:"ru",              # from language need translate 
 
 2 element:"en",              # to language need translate 
 
 3 element:"Привет Лёшик!",   # text for translate
 
 4 element:'pro.ts'           # optional item for some provider translate
 


response:
"{\"dat\":[{\"length\":12,\"rid\":\"pro.ts\",\"text\":[\"привет слово\"]}]}}"

The GetRoutes function:
```
Itranslate4.get_routes('en','ru')
```
Get translate providers:
```
Itranslate4.get_providers
```

response:

{
  \"ame.ts\":\"Amebis\",\"ape.ts\":\"Prompsit\",
  
  \"lgt.ts\":\"Linguatec\",\"lin.ts\":null,
  
  \"mor.ts\":\"MorphoLogic\",\"par.ts\":\"ParsTranslator\",
  
  \"pro.ts\":\"PROMT\",\"pwn.ts\":\"pwn.pl\",
  
  \"sky.ts\":\"SkyCode\",\"sys.ts\":\"SYSTRAN\",
  
  \"trd.ts\":\"Trident\"
  
}

