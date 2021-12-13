part of starlight_type_ahead;

class StarlightService extends _StarlightAheadService {
  StarlightService.instance(_StarlightAheadService service)
      : super._(
          data: service._data,
          targets: service._targets,
          controller: service._controller,
        );
}
