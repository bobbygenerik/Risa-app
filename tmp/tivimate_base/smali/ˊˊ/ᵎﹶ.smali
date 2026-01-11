.class public final Lˊˊ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:[F

.field public static final ˆʾ:[F

.field public static final ٴﹶ:[F


# instance fields
.field public ʽ:Lcom/parse/ʽˑ;

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ⁱˊ:Lʻˆ/ﾞᴵ;

.field public ﹳٴ:I

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lˊˊ/ᵎﹶ;->ʼˎ:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lˊˊ/ᵎﹶ;->ˆʾ:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lˊˊ/ᵎﹶ;->ٴﹶ:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static ⁱˊ(Lˊˊ/ﾞᴵ;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˊˊ/ﾞᴵ;->ﹳٴ:Lˊˊ/ˑﹳ;

    iget-object p0, p0, Lˊˊ/ﾞᴵ;->ⁱˊ:Lˊˊ/ˑﹳ;

    iget-object v0, v0, Lˊˊ/ˑﹳ;->ﹳٴ:[Lʻˆ/ﾞᴵ;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    iget v0, v0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lˊˊ/ˑﹳ;->ﹳٴ:[Lʻˆ/ﾞᴵ;

    array-length v0, p0

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v2

    iget p0, p0, Lʻˆ/ﾞᴵ;->ʾˋ:I

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v2
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 3

    .prologue
    :try_start_0
    new-instance v0, Lcom/parse/ʽˑ;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/parse/ʽˑ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lˊˊ/ᵎﹶ;->ʽ:Lcom/parse/ʽˑ;

    const-string v1, "uMvpMatrix"

    iget v0, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lˊˊ/ᵎﹶ;->ˈ:I

    iget-object v0, p0, Lˊˊ/ᵎﹶ;->ʽ:Lcom/parse/ʽˑ;

    const-string v1, "uTexMatrix"

    iget v0, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lˊˊ/ᵎﹶ;->ˑﹳ:I

    iget-object v0, p0, Lˊˊ/ᵎﹶ;->ʽ:Lcom/parse/ʽˑ;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/parse/ʽˑ;->ˊʻ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˊˊ/ᵎﹶ;->ﾞᴵ:I

    iget-object v0, p0, Lˊˊ/ᵎﹶ;->ʽ:Lcom/parse/ʽˑ;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Lcom/parse/ʽˑ;->ˊʻ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˊˊ/ᵎﹶ;->ᵎﹶ:I

    iget-object v0, p0, Lˊˊ/ᵎﹶ;->ʽ:Lcom/parse/ʽˑ;

    const-string v1, "uTexture"

    iget v0, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lˊˊ/ᵎﹶ;->ᵔᵢ:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ProjectionRenderer"

    const-string v2, "Failed to initialize the program"

    nop

    return-void
.end method
