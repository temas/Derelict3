module derelict.opengl3.gl;

public
{
    import derelict.opengl3.types;
    import derelict.opengl3.constants;
    import derelict.opengl3.deprecatedConstants;
    import derelict.opengl3.functions;
    import derelict.opengl3.deprecatedFunctions;
    import derelict.opengl3.arb;
}

private
{
    import derelict.util.loader;
    import derelict.opengl3.gl3;
    import derelict.opengl3.internal;
}

class DerelictGLLoader : DerelictGL3Loader
{
    public
    {
        override GLVersion reload()
        {
            GLVersion maxVer = super.reload();

            if(maxVer >= GLVersion.GL12)
            {
                bindGLFunc(cast(void**)&glColorTable, "glColorTable");
                bindGLFunc(cast(void**)&glColorSubTable, "glColorSubTable");
                bindGLFunc(cast(void**)&glColorTableParameteriv, "glColorTableParameteriv");
                bindGLFunc(cast(void**)&glColorTableParameterfv, "glColorTableParameterfv");
                bindGLFunc(cast(void**)&glCopyColorSubTable, "glCopyColorSubTable");
                bindGLFunc(cast(void**)&glCopyColorTable, "glCopyColorTable");
                bindGLFunc(cast(void**)&glGetColorTable, "glGetColorTable");
                bindGLFunc(cast(void**)&glGetColorTableParameterfv, "glGetColorTableParameterfv");
                bindGLFunc(cast(void**)&glGetColorTableParameteriv, "glGetColorTableParameteriv");
                bindGLFunc(cast(void**)&glHistogram, "glHistogram");
                bindGLFunc(cast(void**)&glResetHistogram, "glResetHistogram");
                bindGLFunc(cast(void**)&glGetHistogram, "glGetHistogram");
                bindGLFunc(cast(void**)&glGetHistogramParameterfv, "glGetHistogramParameterfv");
                bindGLFunc(cast(void**)&glGetHistogramParameteriv, "glGetHistogramParameteriv");
                bindGLFunc(cast(void**)&glMinmax, "glMinmax");
                bindGLFunc(cast(void**)&glResetMinmax, "glResetMinmax");
                bindGLFunc(cast(void**)&glGetMinmax, "glGetMinmax");
                bindGLFunc(cast(void**)&glGetMinmaxParameterfv, "glGetMinmaxParameterfv");
                bindGLFunc(cast(void**)&glGetMinmaxParameteriv, "glGetMinmaxParameteriv");
                bindGLFunc(cast(void**)&glConvolutionFilter1D, "glConvolutionFilter1D");
                bindGLFunc(cast(void**)&glConvolutionFilter2D, "glConvolutionFilter2D");
                bindGLFunc(cast(void**)&glConvolutionParameterf, "glConvolutionParameterf");
                bindGLFunc(cast(void**)&glConvolutionParameterfv, "glConvolutionParameterfv");
                bindGLFunc(cast(void**)&glConvolutionParameteri, "glConvolutionParameteri");
                bindGLFunc(cast(void**)&glConvolutionParameteriv, "glConvolutionParameteriv");
                bindGLFunc(cast(void**)&glCopyConvolutionFilter1D, "glCopyConvolutionFilter1D");
                bindGLFunc(cast(void**)&glCopyConvolutionFilter2D, "glCopyConvolutionFilter2D");
                bindGLFunc(cast(void**)&glGetConvolutionFilter, "glGetConvolutionFilter");
                bindGLFunc(cast(void**)&glGetConvolutionParameterfv, "glGetConvolutionParameterfv");
                bindGLFunc(cast(void**)&glGetConvolutionParameteriv, "glGetConvolutionParameteriv");
                bindGLFunc(cast(void**)&glSeparableFilter2D, "glSeparableFilter2D");
                bindGLFunc(cast(void**)&glGetSeparableFilter, "glGetSeparableFilter");
            }

            if(maxVer >= GLVersion.GL13)
            {
                bindGLFunc(cast(void**)&glClientActiveTexture, "glClientActiveTexture");
                bindGLFunc(cast(void**)&glMultiTexCoord1d, "glMultiTexCoord1d");
                bindGLFunc(cast(void**)&glMultiTexCoord1dv, "glMultiTexCoord1dv");
                bindGLFunc(cast(void**)&glMultiTexCoord1f, "glMultiTexCoord1f");
                bindGLFunc(cast(void**)&glMultiTexCoord1fv, "glMultiTexCoord1fv");
                bindGLFunc(cast(void**)&glMultiTexCoord1i, "glMultiTexCoord1i");
                bindGLFunc(cast(void**)&glMultiTexCoord1iv, "glMultiTexCoord1iv");
                bindGLFunc(cast(void**)&glMultiTexCoord1s, "glMultiTexCoord1s");
                bindGLFunc(cast(void**)&glMultiTexCoord1sv, "glMultiTexCoord1sv");
                bindGLFunc(cast(void**)&glMultiTexCoord2d, "glMultiTexCoord2d");
                bindGLFunc(cast(void**)&glMultiTexCoord2dv, "glMultiTexCoord2dv");
                bindGLFunc(cast(void**)&glMultiTexCoord2f, "glMultiTexCoord2f");
                bindGLFunc(cast(void**)&glMultiTexCoord2fv, "glMultiTexCoord2fv");
                bindGLFunc(cast(void**)&glMultiTexCoord2i, "glMultiTexCoord2i");
                bindGLFunc(cast(void**)&glMultiTexCoord2iv, "glMultiTexCoord2iv");
                bindGLFunc(cast(void**)&glMultiTexCoord2s, "glMultiTexCoord2s");
                bindGLFunc(cast(void**)&glMultiTexCoord2sv, "glMultiTexCoord2sv");
                bindGLFunc(cast(void**)&glMultiTexCoord3d, "glMultiTexCoord3d");
                bindGLFunc(cast(void**)&glMultiTexCoord3dv, "glMultiTexCoord3dv");
                bindGLFunc(cast(void**)&glMultiTexCoord3f, "glMultiTexCoord3f");
                bindGLFunc(cast(void**)&glMultiTexCoord3fv, "glMultiTexCoord3fv");
                bindGLFunc(cast(void**)&glMultiTexCoord3i, "glMultiTexCoord3i");
                bindGLFunc(cast(void**)&glMultiTexCoord3iv, "glMultiTexCoord3iv");
                bindGLFunc(cast(void**)&glMultiTexCoord3s, "glMultiTexCoord3s");
                bindGLFunc(cast(void**)&glMultiTexCoord3sv, "glMultiTexCoord3sv");
                bindGLFunc(cast(void**)&glMultiTexCoord4d, "glMultiTexCoord4d");
                bindGLFunc(cast(void**)&glMultiTexCoord4dv, "glMultiTexCoord4dv");
                bindGLFunc(cast(void**)&glMultiTexCoord4f, "glMultiTexCoord4f");
                bindGLFunc(cast(void**)&glMultiTexCoord4fv, "glMultiTexCoord4fv");
                bindGLFunc(cast(void**)&glMultiTexCoord4i, "glMultiTexCoord4i");
                bindGLFunc(cast(void**)&glMultiTexCoord4iv, "glMultiTexCoord4iv");
                bindGLFunc(cast(void**)&glMultiTexCoord4s, "glMultiTexCoord4s");
                bindGLFunc(cast(void**)&glMultiTexCoord4sv, "glMultiTexCoord4sv");
                bindGLFunc(cast(void**)&glLoadTransposeMatrixd, "glLoadTransposeMatrixd");
                bindGLFunc(cast(void**)&glLoadTransposeMatrixf, "glLoadTransposeMatrixf");
                bindGLFunc(cast(void**)&glMultTransposeMatrixd, "glMultTransposeMatrixd");
                bindGLFunc(cast(void**)&glMultTransposeMatrixf, "glMultTransposeMatrixf");
            }

            if(maxVer >= GLVersion.GL14)
            {
                bindGLFunc(cast(void**)&glFogCoordf, "glFogCoordf");
                bindGLFunc(cast(void**)&glFogCoordfv, "glFogCoordfv");
                bindGLFunc(cast(void**)&glFogCoordd, "glFogCoordd");
                bindGLFunc(cast(void**)&glFogCoorddv, "glFogCoorddv");
                bindGLFunc(cast(void**)&glFogCoordPointer, "glFogCoordPointer");
                bindGLFunc(cast(void**)&glSecondaryColor3b, "glSecondaryColor3b");
                bindGLFunc(cast(void**)&glSecondaryColor3bv, "glSecondaryColor3bv");
                bindGLFunc(cast(void**)&glSecondaryColor3d, "glSecondaryColor3d");
                bindGLFunc(cast(void**)&glSecondaryColor3dv, "glSecondaryColor3dv");
                bindGLFunc(cast(void**)&glSecondaryColor3f, "glSecondaryColor3f");
                bindGLFunc(cast(void**)&glSecondaryColor3fv, "glSecondaryColor3fv");
                bindGLFunc(cast(void**)&glSecondaryColor3i, "glSecondaryColor3i");
                bindGLFunc(cast(void**)&glSecondaryColor3iv, "glSecondaryColor3iv");
                bindGLFunc(cast(void**)&glSecondaryColor3s, "glSecondaryColor3s");
                bindGLFunc(cast(void**)&glSecondaryColor3sv, "glSecondaryColor3sv");
                bindGLFunc(cast(void**)&glSecondaryColor3ub, "glSecondaryColor3ub");
                bindGLFunc(cast(void**)&glSecondaryColor3ubv, "glSecondaryColor3ubv");
                bindGLFunc(cast(void**)&glSecondaryColor3ui, "glSecondaryColor3ui");
                bindGLFunc(cast(void**)&glSecondaryColor3uiv, "glSecondaryColor3uiv");
                bindGLFunc(cast(void**)&glSecondaryColor3us, "glSecondaryColor3us");
                bindGLFunc(cast(void**)&glSecondaryColor3usv, "glSecondaryColor3usv");
                bindGLFunc(cast(void**)&glSecondaryColorPointer, "glSecondaryColorPointer");
                bindGLFunc(cast(void**)&glWindowPos2d, "glWindowPos2d");
                bindGLFunc(cast(void**)&glWindowPos2dv, "glWindowPos2dv");
                bindGLFunc(cast(void**)&glWindowPos2f, "glWindowPos2f");
                bindGLFunc(cast(void**)&glWindowPos2fv, "glWindowPos2fv");
                bindGLFunc(cast(void**)&glWindowPos2i, "glWindowPos2i");
                bindGLFunc(cast(void**)&glWindowPos2iv, "glWindowPos2iv");
                bindGLFunc(cast(void**)&glWindowPos2s, "glWindowPos2s");
                bindGLFunc(cast(void**)&glWindowPos2sv, "glWindowPos2sv");
                bindGLFunc(cast(void**)&glWindowPos3d, "glWindowPos3d");
                bindGLFunc(cast(void**)&glWindowPos3dv, "glWindowPos3dv");
                bindGLFunc(cast(void**)&glWindowPos3f, "glWindowPos3f");
                bindGLFunc(cast(void**)&glWindowPos3fv, "glWindowPos3fv");
                bindGLFunc(cast(void**)&glWindowPos3i, "glWindowPos3i");
                bindGLFunc(cast(void**)&glWindowPos3iv, "glWindowPos3iv");
                bindGLFunc(cast(void**)&glWindowPos3s, "glWindowPos3s");
                bindGLFunc(cast(void**)&glWindowPos3sv, "glWindowPos3sv");
            }

            return maxVer;
        }
    }

    protected
    {
        override void loadSymbols()
        {
            bindFunc(cast(void**)&glIsList, "glIsList");
            bindFunc(cast(void**)&glDeleteLists, "glDeleteLists");
            bindFunc(cast(void**)&glGenLists, "glGenLists");
            bindFunc(cast(void**)&glNewList, "glNewList");
            bindFunc(cast(void**)&glEndList, "glEndList");
            bindFunc(cast(void**)&glCallList, "glCallList");
            bindFunc(cast(void**)&glCallLists, "glCallLists");
            bindFunc(cast(void**)&glListBase, "glListBase");
            bindFunc(cast(void**)&glBegin, "glBegin");
            bindFunc(cast(void**)&glEnd, "glEnd");
            bindFunc(cast(void**)&glVertex2d, "glVertex2d");
            bindFunc(cast(void**)&glVertex2f, "glVertex2f");
            bindFunc(cast(void**)&glVertex2i, "glVertex2i");
            bindFunc(cast(void**)&glVertex2s, "glVertex2s");
            bindFunc(cast(void**)&glVertex3d, "glVertex3d");
            bindFunc(cast(void**)&glVertex3f, "glVertex3f");
            bindFunc(cast(void**)&glVertex3i, "glVertex3i");
            bindFunc(cast(void**)&glVertex3s, "glVertex3s");
            bindFunc(cast(void**)&glVertex4d, "glVertex4d");
            bindFunc(cast(void**)&glVertex4f, "glVertex4f");
            bindFunc(cast(void**)&glVertex4i, "glVertex4i");
            bindFunc(cast(void**)&glVertex4s, "glVertex4s");
            bindFunc(cast(void**)&glVertex2dv, "glVertex2dv");
            bindFunc(cast(void**)&glVertex2fv, "glVertex2fv");
            bindFunc(cast(void**)&glVertex2iv, "glVertex2iv");
            bindFunc(cast(void**)&glVertex2sv, "glVertex2sv");
            bindFunc(cast(void**)&glVertex3dv, "glVertex3dv");
            bindFunc(cast(void**)&glVertex3fv, "glVertex3fv");
            bindFunc(cast(void**)&glVertex3iv, "glVertex3iv");
            bindFunc(cast(void**)&glVertex3sv, "glVertex3sv");
            bindFunc(cast(void**)&glVertex4dv, "glVertex4dv");
            bindFunc(cast(void**)&glVertex4fv, "glVertex4fv");
            bindFunc(cast(void**)&glVertex4iv, "glVertex4iv");
            bindFunc(cast(void**)&glVertex4sv, "glVertex4sv");
            bindFunc(cast(void**)&glNormal3b, "glNormal3b");
            bindFunc(cast(void**)&glNormal3d, "glNormal3d");
            bindFunc(cast(void**)&glNormal3f, "glNormal3f");
            bindFunc(cast(void**)&glNormal3i, "glNormal3i");
            bindFunc(cast(void**)&glNormal3s, "glNormal3s");
            bindFunc(cast(void**)&glNormal3bv, "glNormal3bv");
            bindFunc(cast(void**)&glNormal3dv, "glNormal3dv");
            bindFunc(cast(void**)&glNormal3fv, "glNormal3fv");
            bindFunc(cast(void**)&glNormal3iv, "glNormal3iv");
            bindFunc(cast(void**)&glNormal3sv, "glNormal3sv");
            bindFunc(cast(void**)&glIndexd, "glIndexd");
            bindFunc(cast(void**)&glIndexf, "glIndexf");
            bindFunc(cast(void**)&glIndexi, "glIndexi");
            bindFunc(cast(void**)&glIndexs, "glIndexs");
            bindFunc(cast(void**)&glIndexub, "glIndexub");
            bindFunc(cast(void**)&glIndexdv, "glIndexdv");
            bindFunc(cast(void**)&glIndexfv, "glIndexfv");
            bindFunc(cast(void**)&glIndexiv, "glIndexiv");
            bindFunc(cast(void**)&glIndexsv, "glIndexsv");
            bindFunc(cast(void**)&glIndexubv, "glIndexubv");
            bindFunc(cast(void**)&glColor3b, "glColor3b");
            bindFunc(cast(void**)&glColor3d, "glColor3d");
            bindFunc(cast(void**)&glColor3f, "glColor3f");
            bindFunc(cast(void**)&glColor3i, "glColor3i");
            bindFunc(cast(void**)&glColor3s, "glColor3s");
            bindFunc(cast(void**)&glColor3ub, "glColor3ub");
            bindFunc(cast(void**)&glColor3ui, "glColor3ui");
            bindFunc(cast(void**)&glColor3us, "glColor3us");
            bindFunc(cast(void**)&glColor4b, "glColor4b");
            bindFunc(cast(void**)&glColor4d, "glColor4d");
            bindFunc(cast(void**)&glColor4f, "glColor4f");
            bindFunc(cast(void**)&glColor4i, "glColor4i");
            bindFunc(cast(void**)&glColor4s, "glColor4s");
            bindFunc(cast(void**)&glColor4ub, "glColor4ub");
            bindFunc(cast(void**)&glColor4ui, "glColor4ui");
            bindFunc(cast(void**)&glColor4us, "glColor4us");
            bindFunc(cast(void**)&glColor3bv, "glColor3bv");
            bindFunc(cast(void**)&glColor3dv, "glColor3dv");
            bindFunc(cast(void**)&glColor3fv, "glColor3fv");
            bindFunc(cast(void**)&glColor3iv, "glColor3iv");
            bindFunc(cast(void**)&glColor3sv, "glColor3sv");
            bindFunc(cast(void**)&glColor3ubv, "glColor3ubv");
            bindFunc(cast(void**)&glColor3uiv, "glColor3uiv");
            bindFunc(cast(void**)&glColor3usv, "glColor3usv");
            bindFunc(cast(void**)&glColor4bv, "glColor4bv");
            bindFunc(cast(void**)&glColor4dv, "glColor4dv");
            bindFunc(cast(void**)&glColor4fv, "glColor4fv");
            bindFunc(cast(void**)&glColor4iv, "glColor4iv");
            bindFunc(cast(void**)&glColor4sv, "glColor4sv");
            bindFunc(cast(void**)&glColor4ubv, "glColor4ubv");
            bindFunc(cast(void**)&glColor4uiv, "glColor4uiv");
            bindFunc(cast(void**)&glColor4usv, "glColor4usv");
            bindFunc(cast(void**)&glTexCoord1d, "glTexCoord1d");
            bindFunc(cast(void**)&glTexCoord1f, "glTexCoord1f");
            bindFunc(cast(void**)&glTexCoord1i, "glTexCoord1i");
            bindFunc(cast(void**)&glTexCoord1s, "glTexCoord1s");
            bindFunc(cast(void**)&glTexCoord2d, "glTexCoord2d");
            bindFunc(cast(void**)&glTexCoord2f, "glTexCoord2f");
            bindFunc(cast(void**)&glTexCoord2i, "glTexCoord2i");
            bindFunc(cast(void**)&glTexCoord2s, "glTexCoord2s");
            bindFunc(cast(void**)&glTexCoord3d, "glTexCoord3d");
            bindFunc(cast(void**)&glTexCoord3f, "glTexCoord3f");
            bindFunc(cast(void**)&glTexCoord3i, "glTexCoord3i");
            bindFunc(cast(void**)&glTexCoord3s, "glTexCoord3s");
            bindFunc(cast(void**)&glTexCoord4d, "glTexCoord4d");
            bindFunc(cast(void**)&glTexCoord4f, "glTexCoord4f");
            bindFunc(cast(void**)&glTexCoord4i, "glTexCoord4i");
            bindFunc(cast(void**)&glTexCoord4s, "glTexCoord4s");
            bindFunc(cast(void**)&glTexCoord1dv, "glTexCoord1dv");
            bindFunc(cast(void**)&glTexCoord1fv, "glTexCoord1fv");
            bindFunc(cast(void**)&glTexCoord1iv, "glTexCoord1iv");
            bindFunc(cast(void**)&glTexCoord1sv, "glTexCoord1sv");
            bindFunc(cast(void**)&glTexCoord2dv, "glTexCoord2dv");
            bindFunc(cast(void**)&glTexCoord2fv, "glTexCoord2fv");
            bindFunc(cast(void**)&glTexCoord2iv, "glTexCoord2iv");
            bindFunc(cast(void**)&glTexCoord2sv, "glTexCoord2sv");
            bindFunc(cast(void**)&glTexCoord3dv, "glTexCoord3dv");
            bindFunc(cast(void**)&glTexCoord3fv, "glTexCoord3fv");
            bindFunc(cast(void**)&glTexCoord3iv, "glTexCoord3iv");
            bindFunc(cast(void**)&glTexCoord3sv, "glTexCoord3sv");
            bindFunc(cast(void**)&glTexCoord4dv, "glTexCoord4dv");
            bindFunc(cast(void**)&glTexCoord4fv, "glTexCoord4fv");
            bindFunc(cast(void**)&glTexCoord4iv, "glTexCoord4iv");
            bindFunc(cast(void**)&glTexCoord4sv, "glTexCoord4sv");
            bindFunc(cast(void**)&glRasterPos2d, "glRasterPos2d");
            bindFunc(cast(void**)&glRasterPos2f, "glRasterPos2f");
            bindFunc(cast(void**)&glRasterPos2i, "glRasterPos2i");
            bindFunc(cast(void**)&glRasterPos2s, "glRasterPos2s");
            bindFunc(cast(void**)&glRasterPos3d, "glRasterPos3d");
            bindFunc(cast(void**)&glRasterPos3f, "glRasterPos3f");
            bindFunc(cast(void**)&glRasterPos3i, "glRasterPos3i");
            bindFunc(cast(void**)&glRasterPos3s, "glRasterPos3s");
            bindFunc(cast(void**)&glRasterPos4d, "glRasterPos4d");
            bindFunc(cast(void**)&glRasterPos4f, "glRasterPos4f");
            bindFunc(cast(void**)&glRasterPos4i, "glRasterPos4i");
            bindFunc(cast(void**)&glRasterPos4s, "glRasterPos4s");
            bindFunc(cast(void**)&glRasterPos2dv, "glRasterPos2dv");
            bindFunc(cast(void**)&glRasterPos2fv, "glRasterPos2fv");
            bindFunc(cast(void**)&glRasterPos2iv, "glRasterPos2iv");
            bindFunc(cast(void**)&glRasterPos2sv, "glRasterPos2sv");
            bindFunc(cast(void**)&glRasterPos3dv, "glRasterPos3dv");
            bindFunc(cast(void**)&glRasterPos3fv, "glRasterPos3fv");
            bindFunc(cast(void**)&glRasterPos3iv, "glRasterPos3iv");
            bindFunc(cast(void**)&glRasterPos3sv, "glRasterPos3sv");
            bindFunc(cast(void**)&glRasterPos4dv, "glRasterPos4dv");
            bindFunc(cast(void**)&glRasterPos4fv, "glRasterPos4fv");
            bindFunc(cast(void**)&glRasterPos4iv, "glRasterPos4iv");
            bindFunc(cast(void**)&glRasterPos4sv, "glRasterPos4sv");
            bindFunc(cast(void**)&glRectd, "glRectd");
            bindFunc(cast(void**)&glRectf, "glRectf");
            bindFunc(cast(void**)&glRecti, "glRecti");
            bindFunc(cast(void**)&glRects, "glRects");
            bindFunc(cast(void**)&glRectdv, "glRectdv");
            bindFunc(cast(void**)&glRectfv, "glRectfv");
            bindFunc(cast(void**)&glRectiv, "glRectiv");
            bindFunc(cast(void**)&glRectsv, "glRectsv");
            bindFunc(cast(void**)&glClipPlane, "glClipPlane");
            bindFunc(cast(void**)&glGetClipPlane, "glGetClipPlane");
            bindFunc(cast(void**)&glShadeModel, "glShadeModel");
            bindFunc(cast(void**)&glLightf, "glLightf");
            bindFunc(cast(void**)&glLighti, "glLighti");
            bindFunc(cast(void**)&glLightfv, "glLightfv");
            bindFunc(cast(void**)&glLightiv, "glLightiv");
            bindFunc(cast(void**)&glGetLightfv, "glGetLightfv");
            bindFunc(cast(void**)&glGetLightiv, "glGetLightiv");
            bindFunc(cast(void**)&glLightModelf, "glLightModelf");
            bindFunc(cast(void**)&glLightModeli, "glLightModeli");
            bindFunc(cast(void**)&glLightModelfv, "glLightModelfv");
            bindFunc(cast(void**)&glLightModeliv, "glLightModeliv");
            bindFunc(cast(void**)&glMaterialf, "glMaterialf");
            bindFunc(cast(void**)&glMateriali, "glMateriali");
            bindFunc(cast(void**)&glMaterialfv, "glMaterialfv");
            bindFunc(cast(void**)&glMaterialiv, "glMaterialiv");
            bindFunc(cast(void**)&glGetMaterialfv, "glGetMaterialfv");
            bindFunc(cast(void**)&glGetMaterialiv, "glGetMaterialiv");
            bindFunc(cast(void**)&glColorMaterial, "glColorMaterial");
            bindFunc(cast(void**)&glColorMaterial, "glColorMaterial");
            bindFunc(cast(void**)&glFogf, "glFogf");
            bindFunc(cast(void**)&glFogi, "glFogi");
            bindFunc(cast(void**)&glFogfv, "glFogfv");
            bindFunc(cast(void**)&glFogiv, "glFogiv");
            bindFunc(cast(void**)&glLineStipple, "glLineStipple");
            bindFunc(cast(void**)&glPolygonStipple, "glPolygonStipple");
            bindFunc(cast(void**)&glGetPolygonStipple, "glGetPolygonStipple");
            bindFunc(cast(void**)&glTexGend, "glTexGend");
            bindFunc(cast(void**)&glTexGenf, "glTexGenf");
            bindFunc(cast(void**)&glTexGeni, "glTexGeni");
            bindFunc(cast(void**)&glTexGendv, "glTexGendv");
            bindFunc(cast(void**)&glTexGenfv, "glTexGenfv");
            bindFunc(cast(void**)&glTexGeniv, "glTexGeniv");
            bindFunc(cast(void**)&glGetTexGendv, "glGetTexGendv");
            bindFunc(cast(void**)&glGetTexGenfv, "glGetTexGenfv");
            bindFunc(cast(void**)&glGetTexGeniv, "glGetTexGeniv");
            bindFunc(cast(void**)&glTexEnvf, "glTexEnvf");
            bindFunc(cast(void**)&glTexEnvi, "glTexEnvi");
            bindFunc(cast(void**)&glTexEnvfv, "glTexEnvfv");
            bindFunc(cast(void**)&glTexEnviv, "glTexEnviv");
            bindFunc(cast(void**)&glGetTexEnvfv, "glGetTexEnvfv");
            bindFunc(cast(void**)&glGetTexEnviv, "glGetTexEnviv");
            bindFunc(cast(void**)&glFeedbackBuffer, "glFeedbackBuffer");
            bindFunc(cast(void**)&glPassThrough, "glPassThrough");
            bindFunc(cast(void**)&glSelectBuffer, "glSelectBuffer");
            bindFunc(cast(void**)&glInitNames, "glInitNames");
            bindFunc(cast(void**)&glLoadName, "glLoadName");
            bindFunc(cast(void**)&glPushName, "glPushName");
            bindFunc(cast(void**)&glPopName, "glPopName");
            bindFunc(cast(void**)&glRenderMode, "glRenderMode");
            bindFunc(cast(void**)&glClearAccum, "glClearAccum");
            bindFunc(cast(void**)&glAccum, "glAccum");
            bindFunc(cast(void**)&glClearIndex, "glClearIndex");
            bindFunc(cast(void**)&glIndexMask, "glIndexMask");
            bindFunc(cast(void**)&glPushAttrib, "glPushAttrib");
            bindFunc(cast(void**)&glMap1d, "glMap1d");
            bindFunc(cast(void**)&glMap1f, "glMap1f");
            bindFunc(cast(void**)&glMap2d, "glMap2d");
            bindFunc(cast(void**)&glMap2f, "glMap2f");
            bindFunc(cast(void**)&glGetMapdv, "glGetMapdv");
            bindFunc(cast(void**)&glGetMapfv, "glGetMapfv");
            bindFunc(cast(void**)&glGetMapiv, "glGetMapiv");
            bindFunc(cast(void**)&glEvalCoord1d, "glEvalCoord1d");
            bindFunc(cast(void**)&glEvalCoord1f, "glEvalCoord1f");
            bindFunc(cast(void**)&glEvalCoord1dv, "glEvalCoord1dv");
            bindFunc(cast(void**)&glEvalCoord1fv, "glEvalCoord1fv");
            bindFunc(cast(void**)&glEvalCoord2d, "glEvalCoord2d");
            bindFunc(cast(void**)&glEvalCoord2f, "glEvalCoord2f");
            bindFunc(cast(void**)&glEvalCoord2dv, "glEvalCoord2dv");
            bindFunc(cast(void**)&glEvalCoord2fv, "glEvalCoord2fv");
            bindFunc(cast(void**)&glMapGrid1d, "glMapGrid1d");
            bindFunc(cast(void**)&glMapGrid1f, "glMapGrid1f");
            bindFunc(cast(void**)&glMapGrid2d, "glMapGrid2d");
            bindFunc(cast(void**)&glMapGrid2f, "glMapGrid2f");
            bindFunc(cast(void**)&glEvalPoint1, "glEvalPoint1");
            bindFunc(cast(void**)&glEvalPoint2, "glEvalPoint2");
            bindFunc(cast(void**)&glEvalMesh1, "glEvalMesh1");
            bindFunc(cast(void**)&glEvalMesh2, "glEvalMesh2");
            bindFunc(cast(void**)&glAlphaFunc, "glAlphaFunc");
            bindFunc(cast(void**)&glPixelZoom, "glPixelZoom");
            bindFunc(cast(void**)&glPixelTransferf, "glPixelTransferf");
            bindFunc(cast(void**)&glPixelTransferi, "glPixelTransferi");
            bindFunc(cast(void**)&glPixelMapfv, "glPixelMapfv");
            bindFunc(cast(void**)&glPixelMapuiv, "glPixelMapuiv");
            bindFunc(cast(void**)&glPixelMapusv, "glPixelMapusv");
            bindFunc(cast(void**)&glGetPixelMapfv, "glGetPixelMapfv");
            bindFunc(cast(void**)&glGetPixelMapuiv, "glGetPixelMapuiv");
            bindFunc(cast(void**)&glGetPixelMapusv, "glGetPixelMapusv");
            bindFunc(cast(void**)&glDrawPixels, "glDrawPixels");
            bindFunc(cast(void**)&glCopyPixels, "glCopyPixels");
            bindFunc(cast(void**)&glFrustum, "glFrustum");
            bindFunc(cast(void**)&glMatrixMode, "glMatrixMode");
            bindFunc(cast(void**)&glOrtho, "glOrtho");
            bindFunc(cast(void**)&glFrustum, "glFrustum");
            bindFunc(cast(void**)&glViewport, "glViewport");
            bindFunc(cast(void**)&glPushMatrix, "glPushMatrix");
            bindFunc(cast(void**)&glPopMatrix, "glPopMatrix");
            bindFunc(cast(void**)&glLoadIdentity, "glLoadIdentity");
            bindFunc(cast(void**)&glLoadMatrixd, "glLoadMatrixd");
            bindFunc(cast(void**)&glLoadMatrixf, "glLoadMatrixf");
            bindFunc(cast(void**)&glMultMatrixd, "glMultMatrixd");
            bindFunc(cast(void**)&glMultMatrixf, "glMultMatrixf");
            bindFunc(cast(void**)&glRotated, "glRotated");
            bindFunc(cast(void**)&glRotatef, "glRotatef");
            bindFunc(cast(void**)&glScaled, "glScaled");
            bindFunc(cast(void**)&glScalef, "glScalef");
            bindFunc(cast(void**)&glTranslated, "glTranslated");
            bindFunc(cast(void**)&glTranslatef, "glTranslatef");
            bindFunc(cast(void**)&glVertexPointer, "glVertexPointer");
            bindFunc(cast(void**)&glNormalPointer, "glNormalPointer");
            bindFunc(cast(void**)&glColorPointer, "glColorPointer");
            bindFunc(cast(void**)&glIndexPointer, "glIndexPointer");
            bindFunc(cast(void**)&glTexCoordPointer, "glTexCoordPointer");
            bindFunc(cast(void**)&glEdgeFlagPointer, "glEdgeFlagPointer");
            bindFunc(cast(void**)&glGetPointerv, "glGetPointerv");
            bindFunc(cast(void**)&glArrayElement, "glArrayElement");
            bindFunc(cast(void**)&glInterleavedArrays, "glInterleavedArrays");
            bindFunc(cast(void**)&glEnableClientState, "glEnableClientState");
            bindFunc(cast(void**)&glDisableClientState, "glDisableClientState");
            bindFunc(cast(void**)&glPrioritizeTextures, "glPrioritizeTextures");
            bindFunc(cast(void**)&glAreTexturesResident, "glAreTexturesResident");
            bindFunc(cast(void**)&glPushClientAttrib, "glPushClientAttrib");
            bindFunc(cast(void**)&glPopClientAttrib, "glPopClientAttrib");
        }
    }

    private
    {
        this() {}
    }
}

__gshared DerelictGLLoader DerelictGL;

shared static this()
{
    DerelictGL = new DerelictGLLoader;
}

shared static ~this()
{
    if(SharedLibLoader.isAutoUnloadEnabled())
        DerelictGL.unload();
}
