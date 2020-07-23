.class public Lcom/badlogic/gdx/backends/android/AndroidGL20;
.super Ljava/lang/Object;
.source "AndroidGL20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field private buffer:[B

.field private ints:[I

.field private ints2:[I

.field private ints3:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/16 v0, 0x200

    .line 29
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .registers 2

    .line 32
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    return-void
.end method

.method public glAttachShader(II)V
    .registers 3

    .line 36
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .registers 4

    .line 40
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    return-void
.end method

.method public glBindBuffer(II)V
    .registers 3

    .line 44
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public glBindFramebuffer(II)V
    .registers 3

    .line 48
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public glBindRenderbuffer(II)V
    .registers 3

    .line 52
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    return-void
.end method

.method public glBindTexture(II)V
    .registers 3

    .line 56
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public glBlendColor(FFFF)V
    .registers 5

    .line 60
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    return-void
.end method

.method public glBlendEquation(I)V
    .registers 2

    .line 64
    invoke-static {p1}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .registers 3

    .line 68
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendEquationSeparate(II)V

    return-void
.end method

.method public glBlendFunc(II)V
    .registers 3

    .line 72
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .registers 5

    .line 76
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .registers 5

    .line 80
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .registers 5

    .line 84
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    return p1
.end method

.method public glClear(I)V
    .registers 2

    .line 92
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public glClearColor(FFFF)V
    .registers 5

    .line 96
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public glClearDepthf(F)V
    .registers 2

    .line 100
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    return-void
.end method

.method public glClearStencil(I)V
    .registers 2

    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .registers 5

    .line 108
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    return-void
.end method

.method public glCompileShader(I)V
    .registers 2

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .registers 9

    .line 116
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 10

    .line 120
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .registers 9

    .line 124
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .registers 9

    .line 128
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    return-void
.end method

.method public glCreateProgram()I
    .registers 2

    .line 132
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public glCreateShader(I)I
    .registers 2

    .line 136
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    return p1
.end method

.method public glCullFace(I)V
    .registers 2

    .line 140
    invoke-static {p1}, Landroid/opengl/GLES20;->glCullFace(I)V

    return-void
.end method

.method public glDeleteBuffer(I)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 149
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 144
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 158
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 153
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteProgram(I)V
    .registers 2

    .line 162
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 171
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 166
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteShader(I)V
    .registers 2

    .line 175
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method

.method public glDeleteTexture(I)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 184
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 179
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDepthFunc(I)V
    .registers 2

    .line 188
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    return-void
.end method

.method public glDepthMask(Z)V
    .registers 2

    .line 192
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    return-void
.end method

.method public glDepthRangef(FF)V
    .registers 3

    .line 196
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDepthRangef(FF)V

    return-void
.end method

.method public glDetachShader(II)V
    .registers 3

    .line 200
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    return-void
.end method

.method public glDisable(I)V
    .registers 2

    .line 204
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .registers 2

    .line 208
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public glDrawArrays(III)V
    .registers 4

    .line 212
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public glDrawElements(IIII)V
    .registers 5

    .line 220
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .registers 5

    .line 216
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public glEnable(I)V
    .registers 2

    .line 224
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .registers 2

    .line 228
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public glFinish()V
    .registers 1

    .line 232
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public glFlush()V
    .registers 1

    .line 236
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .registers 5

    .line 240
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .registers 6

    .line 244
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public glFrontFace(I)V
    .registers 2

    .line 248
    invoke-static {p1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    return-void
.end method

.method public glGenBuffer()I
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v1

    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 252
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenFramebuffer()I
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v1

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 265
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenRenderbuffer()I
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v1

    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 274
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenTexture()I
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v1

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 283
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenerateMipmap(I)V
    .registers 2

    .line 261
    invoke-static {p1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .registers 20

    move-object v0, p0

    .line 295
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 297
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v2

    .line 299
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    move-object/from16 v3, p4

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v2

    .line 301
    iget-object v13, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    array-length v6, v13

    iget-object v7, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    iget-object v9, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v4 .. v14}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 302
    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v4, v4, v2

    invoke-direct {v1, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .registers 20

    move-object v0, p0

    .line 307
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 309
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v2

    .line 311
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    move-object/from16 v3, p4

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v2

    .line 313
    iget-object v13, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    array-length v6, v13

    iget-object v7, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    iget-object v9, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v4 .. v14}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 314
    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v4, v4, v2

    invoke-direct {v1, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .registers 5

    .line 318
    check-cast p3, Ljava/nio/IntBuffer;

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetAttachedShaders(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .registers 3

    .line 322
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .registers 3

    .line 326
    check-cast p2, Ljava/nio/IntBuffer;

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 330
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetError()I
    .registers 2

    .line 334
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 338
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .registers 5

    .line 342
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 346
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .registers 2

    .line 354
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 350
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 358
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .registers 2

    .line 366
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .registers 5

    .line 370
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 362
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .registers 2

    .line 374
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 378
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 382
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .registers 3

    .line 394
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 386
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 390
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .registers 4

    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 398
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 402
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glHint(II)V
    .registers 3

    .line 410
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glHint(II)V

    return-void
.end method

.method public glIsBuffer(I)Z
    .registers 2

    .line 414
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsBuffer(I)Z

    move-result p1

    return p1
.end method

.method public glIsEnabled(I)Z
    .registers 2

    .line 418
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result p1

    return p1
.end method

.method public glIsFramebuffer(I)Z
    .registers 2

    .line 422
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsFramebuffer(I)Z

    move-result p1

    return p1
.end method

.method public glIsProgram(I)Z
    .registers 2

    .line 426
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result p1

    return p1
.end method

.method public glIsRenderbuffer(I)Z
    .registers 2

    .line 430
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsRenderbuffer(I)Z

    move-result p1

    return p1
.end method

.method public glIsShader(I)Z
    .registers 2

    .line 434
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsShader(I)Z

    move-result p1

    return p1
.end method

.method public glIsTexture(I)Z
    .registers 2

    .line 438
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result p1

    return p1
.end method

.method public glLineWidth(F)V
    .registers 2

    .line 442
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public glLinkProgram(I)V
    .registers 2

    .line 446
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void
.end method

.method public glPixelStorei(II)V
    .registers 3

    .line 450
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .registers 3

    .line 454
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .registers 8

    .line 458
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glReleaseShaderCompiler()V
    .registers 1

    .line 462
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .registers 5

    .line 466
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .registers 3

    .line 470
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    return-void
.end method

.method public glScissor(IIII)V
    .registers 5

    .line 474
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .registers 6

    .line 478
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .registers 3

    .line 482
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    return-void
.end method

.method public glStencilFunc(III)V
    .registers 4

    .line 486
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .registers 5

    .line 490
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glStencilFuncSeparate(IIII)V

    return-void
.end method

.method public glStencilMask(I)V
    .registers 2

    .line 494
    invoke-static {p1}, Landroid/opengl/GLES20;->glStencilMask(I)V

    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .registers 3

    .line 498
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glStencilMaskSeparate(II)V

    return-void
.end method

.method public glStencilOp(III)V
    .registers 4

    .line 502
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .registers 5

    .line 506
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glStencilOpSeparate(IIII)V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 10

    .line 510
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .registers 4

    .line 514
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 518
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glTexParameteri(III)V
    .registers 4

    .line 522
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 526
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 10

    .line 530
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glUniform1f(IF)V
    .registers 3

    .line 534
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 538
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniform1fv(II[FI)V
    .registers 5

    .line 542
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void
.end method

.method public glUniform1i(II)V
    .registers 3

    .line 546
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 550
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform1iv(II[II)V
    .registers 5

    .line 554
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    return-void
.end method

.method public glUniform2f(IFF)V
    .registers 4

    .line 558
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 562
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniform2fv(II[FI)V
    .registers 5

    .line 566
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public glUniform2i(III)V
    .registers 4

    .line 570
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2i(III)V

    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 574
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform2iv(II[II)V
    .registers 5

    .line 578
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    return-void
.end method

.method public glUniform3f(IFFF)V
    .registers 5

    .line 582
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 586
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniform3fv(II[FI)V
    .registers 5

    .line 590
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public glUniform3i(IIII)V
    .registers 5

    .line 594
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3i(IIII)V

    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 598
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform3iv(II[II)V
    .registers 5

    .line 602
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    return-void
.end method

.method public glUniform4f(IFFFF)V
    .registers 6

    .line 606
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 610
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniform4fv(II[FI)V
    .registers 5

    .line 614
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public glUniform4i(IIIII)V
    .registers 6

    .line 618
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4i(IIIII)V

    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 622
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glUniform4iv(II[II)V
    .registers 5

    .line 626
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .registers 5

    .line 630
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .registers 6

    .line 634
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .registers 5

    .line 638
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .registers 6

    .line 642
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .registers 5

    .line 646
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .registers 6

    .line 650
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public glUseProgram(I)V
    .registers 2

    .line 654
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public glValidateProgram(I)V
    .registers 2

    .line 658
    invoke-static {p1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .registers 3

    .line 662
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 666
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .registers 4

    .line 670
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glVertexAttrib2f(IFF)V

    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 674
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .registers 5

    .line 678
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glVertexAttrib3f(IFFF)V

    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 682
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .registers 6

    .line 686
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 690
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .registers 7

    .line 698
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .registers 7

    .line 694
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public glViewport(IIII)V
    .registers 5

    .line 702
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method
