% LINES 2D and 3D line manipulations.
%
% Plucker lines
%   aInvPinHolePlucker  - Inverse pin hole model for Plucker lines
%   fromFramePlucker    - Transform plucker line from a given frame.
%   toFramePlucker      - Transform plucker line to a given frame.
%   planeBase2dirVector - Plucker line dir. vector from base spec.
%   planeVec2planeBase  - Orthonormal base for a plane
%   points2plucker      - Plucker line from two homogeneous points
%   pluckerEndpoints    - Plucker line and abscissas to endpoints conversion.
%   pluckerOrigin       - Plucker line origin.
%   pluckerAngle        - Angle between Plucker vectors.
%   pix2PluckerRay      - 
%   lines2abscissa      - Abscissa of Plucer line at the intersection with ray.
%   lines2point         - Intersection point of 2 Plucker lines. Result in Homogeneous.
%   lines2Epoint        - Intersection point of 2 Plucker lines. Result in Euclidean.
%
% Anchored Plucker lines
%   anchorPlucker       - Plucker to anchored Plucker line conversion
%   fromFrameAPlucker   - Anchored Plucker fromFrame transform.
%   toFrameAPlucker     - Anchored Plucker toFrame transform.
%   reanchorPlucker     - Plucker to anchored Plucker line conversion
%   unanchorPlucker     - Remove Plucker anchor.
%
% Inverse depth lines
%   idl2pp              - Inverse depth line to passage points.
%   intersectPpLines    - Intersect two point-point lines.
%   intersectPvLines    - Intersect two point-vector lines.
%   ppLine2pvLine       - Points line to point-vector line transform.
%   ppp2idl             - Points to inverse depth line conversion.
%   updateEndPoints     - 3D landmark, IDL is Inverse Depth Line
%
% 3D segments
%   toFrameSegment      - Express in local frame a set of segments from global frame
%   segLength           - Segment length.
%
% 2D lines - mixed hmg, pp, seg, ...
%   trimSegment         - Trim segment at image borders
%   trimHmgLin          - Trim 2D homogeneous line at image borders
%   hmgLin2rt           - Homogeneous to rho-theta line expression in the plane.
%   pp2hmgLin           - Homogeneous line from two homogeneous points
%   pp2rt               - Points to rho theta 2D line conversion.
%   rt2hmgLin           - Rho-theta to homogeneous line conversion.
%   seg2hmgLin          - Segment to homogeneous line conversion.
%   hh2p                - Intersection of 2 homogeneous lines.
%   lp2d                - Line-point signed distance, in 2D.
%   hms2hh              - Orthogonal endpoints innovation for homogeneous line and segment.
