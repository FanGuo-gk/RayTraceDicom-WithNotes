/**
 * \file
 * \brief TracerParamStructDiv3 class declaration
 */
#ifndef TRACER_PARAM_STRUCT_DIV3_CUH
#define TRACER_PARAM_STRUCT_DIV3_CUH

#include "cuda_member.cuh"
#include "vector_types.h"

class Float3FromFanTransform;

/**
 * \brief 3D tracing parameter struct
 */
class TracerParamStructDiv3 {
public:
    /**
     * \brief Class constructor
     * \param fanIdxToImIdx ...
     */
    TracerParamStructDiv3(const Float3FromFanTransform fanIdxToImIdx);

    //
    // brief ...
    // param fanIdxToFan ...
    // param sourceDist ...
    // param gantryToWorldIdx ...
    //
    //TracerParamStructDiv3(const Float3IdxTransform fanIdxToFan, const float sourceDist, const Float3AffineTransform gantryToWorldIdx);

    /**
     * \brief ...
     * \param idxI ...
     * \param idxJ ...
     * \return ...
     */
    CUDA_CALLABLE_MEMBER float3 getStart(const int idxI, const int idxJ) const;

    /**
     * \brief ...
     * \param idxI ...
     * \param idxJ ...
     * \return ...
     */
    CUDA_CALLABLE_MEMBER float3 getInc(const int idxI, const int idxJ) const;

    /**
     * \brief ...
     * \return ...
     */
    CUDA_CALLABLE_MEMBER float getDeltaZ() const;

    /**
     * \brief ...
     * \return ...
     */
    CUDA_CALLABLE_MEMBER float getMinDist() const;

    /**
     * \brief ...
     * \param k
     * \return ...
     */
    CUDA_CALLABLE_MEMBER float volPerDist(const int k) const;

private:
    float3 coefOffset;  ///< ...
    float3 coefIdxI;    ///< ...
    float3 coefIdxJ;    ///< ...
    float3 transl;      ///< ...
    float minDist;      ///< ...
    float deltaZ;       ///< ...
    float dist;         ///< ...
    float volConst;     ///< ...
    float volLin;       ///< ...
    float volSq;        ///< ...
};

#endif //TRACER_PARAM_STRUCT_DIV3_CUH
