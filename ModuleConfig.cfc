/**
 * Copyright Since 2011 Joel Tobey
 * www.cfboom.io
 * ---
 */
component
{
  // Module Properties
  this.title = "CF Boom Lang";
  this.author = "Joel Tobey";
  this.webURL = "https://github.com/cfboom/cfboom-lang";
  this.description = "Base ColdBox Module for CF Boom";
  this.version = "2.0.0";

  // If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
  this.viewParentLookup = true;

  // If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
  this.layoutParentLookup = true;

  // Module Entry Point
  this.entryPoint = "lang";

  // Inherit entry point from parent, so this will be /api/v1
  this.inheritEntryPoint = true;

  // Model Namespace
  this.modelNamespace = "cfboom-lang";

  // CF Mapping
  this.cfmapping = "cfboom/lang";

  // Auto-map models
  this.autoMapModels = false;

  // Module Dependencies
  this.dependencies = ["cfboom-base"];

  function configure() {
    // parent settings
    parentSettings = {};

    // module settings - stored in modules.name.settings
    settings = {};

    // Layout Settings
    layoutSettings = { defaultLayout : "" };

    // Custom Declared Points
    interceptorSettings = { customInterceptionPoints : "" };

    // Custom Declared Interceptors
    interceptors = [];
  }

  /**
   * Fired when the module is registered and activated.
   */
  function onLoad() {
  }

  /**
   * Fired when the module is unregistered and unloaded
   */
  function onUnload() {
  }

}
