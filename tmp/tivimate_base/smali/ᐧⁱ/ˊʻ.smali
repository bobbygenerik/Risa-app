.class public abstract Lᐧⁱ/ˊʻ;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public ʻᵎ:Z

.field public ʼˈ:Lʽⁱ/ᵔٴ;

.field public final ʽʽ:Landroid/view/View;

.field public final ʾˋ:Lᐧⁱ/ᴵˊ;

.field public ʿ:I

.field public ʿᵢ:Z

.field public final ˆﾞ:Landroid/widget/FrameLayout;

.field public final ˈʿ:Landroid/os/Handler;

.field public ˈˏ:Z

.field public final ˈٴ:Landroid/view/View;

.field public ˈⁱ:I

.field public ˉـ:Landroid/graphics/drawable/Drawable;

.field public final ˉٴ:Landroid/widget/ImageView;

.field public final ˊʻ:Lᐧⁱ/ᴵᵔ;

.field public final ˊˋ:Ljava/lang/Object;

.field public ˊᵔ:Z

.field public final ˋᵔ:Ljava/lang/reflect/Method;

.field public ˏᵢ:Z

.field public final ˑٴ:Ljava/lang/Class;

.field public ـˏ:Z

.field public ـﹶ:Z

.field public final ٴʼ:Landroid/view/View;

.field public final ٴᵢ:Landroid/widget/ImageView;

.field public ᐧᴵ:Z

.field public ᐧﾞ:I

.field public ᴵʼ:Z

.field public final ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public ᴵˑ:I

.field public final ᴵᵔ:Z

.field public final ᵎˊ:Landroid/widget/TextView;

.field public ᵎᵔ:Ljava/lang/CharSequence;

.field public final ᵎⁱ:Landroidx/media3/ui/SubtitleView;

.field public final ᵔי:Lᐧⁱ/ˏי;

.field public final ᵔٴ:Landroid/widget/FrameLayout;

.field public ﹳـ:Lᐧⁱ/יـ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Lᐧⁱ/ᴵˊ;

    move-object v5, v1

    check-cast v5, Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-direct {v4, v5}, Lᐧⁱ/ᴵˊ;-><init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;)V

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ʾˋ:Lᐧⁱ/ᴵˊ;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v1, Lᐧⁱ/ˊʻ;->ˈʿ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    iput-boolean v3, v1, Lᐧⁱ/ˊʻ;->ᴵᵔ:Z

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˊʻ:Lᐧⁱ/ᴵᵔ;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˉٴ:Landroid/widget/ImageView;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ᵎⁱ:Landroidx/media3/ui/SubtitleView;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ٴʼ:Landroid/view/View;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ᵎˊ:Landroid/widget/TextView;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˆﾞ:Landroid/widget/FrameLayout;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ᵔٴ:Landroid/widget/FrameLayout;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˑٴ:Ljava/lang/Class;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˋᵔ:Ljava/lang/reflect/Method;

    iput-object v6, v1, Lᐧⁱ/ˊʻ;->ˊˋ:Ljava/lang/Object;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b9

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0600aa

    invoke-virtual {v3, v0, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v7, 0x3

    const/4 v8, 0x1

    const v9, 0x7f0e003d

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v12, Lᐧⁱ/ٴᵢ;->ˈ:[I

    invoke-virtual {v11, v2, v12, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x2a

    :try_start_0
    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    invoke-virtual {v11, v12, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    const/16 v14, 0x16

    invoke-virtual {v11, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v14, 0x32

    invoke-virtual {v11, v14, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v11, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    const/16 v6, 0x9

    invoke-virtual {v11, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v7, 0xf

    invoke-virtual {v11, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v5, 0x33

    invoke-virtual {v11, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x2d

    invoke-virtual {v11, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v8, 0x1c

    invoke-virtual {v11, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v3, 0x26

    move/from16 v19, v5

    const/16 v5, 0x1388

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v5, 0xe

    move/from16 v17, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v20, v5

    const/4 v5, 0x4

    invoke-virtual {v11, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    const/16 v3, 0x23

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iget-boolean v5, v1, Lᐧⁱ/ˊʻ;->ʿᵢ:Z

    move/from16 v22, v3

    const/16 v3, 0x10

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lᐧⁱ/ˊʻ;->ʿᵢ:Z

    const/16 v3, 0xd

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v11, v9

    move/from16 v5, v21

    move v9, v7

    move/from16 v21, v13

    move/from16 v7, v22

    move v13, v12

    move v12, v10

    move v10, v8

    move v8, v6

    move v6, v3

    move/from16 v3, v20

    move/from16 v20, v15

    move v15, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_1
    const/16 v5, 0x1388

    move/from16 v17, v5

    move v11, v9

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    invoke-virtual {v14, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v11, 0x40000

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const v11, 0x7f0b0162

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v11, v1, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v11, :cond_2

    iget v14, v11, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    if-eq v14, v10, :cond_2

    iput v10, v11, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroidx/media3/ui/AspectRatioFrameLayout;->ﹳٴ(Z)V

    :cond_2
    const v10, 0x7f0b0184

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    if-eqz v10, :cond_3

    if-eqz v21, :cond_3

    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    const/4 v13, 0x2

    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v14, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eq v12, v13, :cond_7

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x3

    if-eq v12, v13, :cond_6

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    new-instance v10, Landroid/view/SurfaceView;

    invoke-direct {v10, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x22

    if-lt v12, v13, :cond_4

    invoke-static {v10}, Lˊˋ/ﾞᴵ;->ˆʾ(Landroid/view/SurfaceView;)V

    :cond_4
    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    goto :goto_1

    :cond_5
    :try_start_1
    const-class v12, Lﾞˏ/יـ;

    sget v13, Lﾞˏ/יـ;->ᴵˊ:I

    move-object/from16 v16, v10

    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v16, v10, v18

    invoke-virtual {v12, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v0, v12, v18

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    move-object/from16 v16, v10

    :try_start_2
    const-class v10, Lˊˊ/ٴﹶ;

    sget v12, Lˊˊ/ٴﹶ;->ᵔי:I

    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v16, v12, v18

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v0, v12, v18

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    new-instance v10, Landroid/view/TextureView;

    invoke-direct {v10, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    :goto_1
    const/4 v10, 0x0

    :goto_2
    iget-object v12, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    const/4 v10, 0x0

    :goto_3
    iput-boolean v10, v1, Lᐧⁱ/ˊʻ;->ᴵᵔ:Z

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x22

    if-ne v4, v13, :cond_9

    new-instance v4, Lᐧⁱ/ᴵᵔ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˊʻ:Lᐧⁱ/ᴵᵔ;

    const v4, 0x7f0b015a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˆﾞ:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0175

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ᵔٴ:Landroid/widget/FrameLayout;

    const v4, 0x7f0b016e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    iput v9, v1, Lᐧⁱ/ˊʻ;->ᴵˑ:I

    :try_start_3
    const-class v4, Landroidx/media3/exoplayer/ExoPlayer;

    const-class v9, Landroidx/media3/exoplayer/image/ImageOutput;

    const-string v10, "setImageOutput"

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v18, 0x0

    :try_start_4
    aput-object v9, v11, v18

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Class;

    aput-object v9, v12, v18

    new-instance v9, Lᐧⁱ/ᵢˏ;

    move-object v13, v1

    check-cast v13, Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-direct {v9, v13}, Lᐧⁱ/ᵢˏ;-><init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;)V

    invoke-static {v11, v12, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_2
    const/16 v18, 0x0

    :catch_3
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˑٴ:Ljava/lang/Class;

    iput-object v10, v1, Lᐧⁱ/ˊʻ;->ˋᵔ:Ljava/lang/reflect/Method;

    iput-object v9, v1, Lᐧⁱ/ˊʻ;->ˊˋ:Ljava/lang/Object;

    const v4, 0x7f0b015b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˉٴ:Landroid/widget/ImageView;

    if-eqz v15, :cond_a

    if-eqz v20, :cond_a

    if-eqz v4, :cond_a

    move/from16 v4, v20

    goto :goto_6

    :cond_a
    move/from16 v4, v18

    :goto_6
    iput v4, v1, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ˉـ:Landroid/graphics/drawable/Drawable;

    :cond_b
    const v4, 0x7f0b0187

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/SubtitleView;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ᵎⁱ:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->ﹳٴ()V

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->ⁱˊ()V

    :cond_c
    const v4, 0x7f0b015f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ٴʼ:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v4, :cond_d

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iput v7, v1, Lᐧⁱ/ˊʻ;->ʿ:I

    const v4, 0x7f0b0167

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ᵎˊ:Landroid/widget/TextView;

    if-eqz v4, :cond_e

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const v4, 0x7f0b0163

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lᐧⁱ/ˏי;

    const v8, 0x7f0b0164

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v7, :cond_f

    iput-object v7, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    goto :goto_7

    :cond_f
    if-eqz v8, :cond_10

    new-instance v7, Lᐧⁱ/ˏי;

    invoke-direct {v7, v0, v2}, Lᐧⁱ/ˏי;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v7, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    iput-object v4, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    :goto_7
    iget-object v0, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz v0, :cond_11

    move/from16 v2, v17

    goto :goto_8

    :cond_11
    move/from16 v2, v18

    :goto_8
    iput v2, v1, Lᐧⁱ/ˊʻ;->ᐧﾞ:I

    iput-boolean v3, v1, Lᐧⁱ/ˊʻ;->ᴵʼ:Z

    iput-boolean v5, v1, Lᐧⁱ/ˊʻ;->ᐧᴵ:Z

    iput-boolean v6, v1, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    if-eqz v19, :cond_12

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    move/from16 v3, v18

    :goto_9
    iput-boolean v3, v1, Lᐧⁱ/ˊʻ;->ـˏ:Z

    if-eqz v0, :cond_15

    iget-object v0, v0, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    iget v2, v0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    const/4 v13, 0x3

    if-eq v2, v13, :cond_14

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Lᐧⁱ/ʼʼ;->ﾞᴵ()V

    invoke-virtual {v0, v3}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    :cond_14
    :goto_a
    iget-object v0, v1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    iget-object v2, v1, Lᐧⁱ/ˊʻ;->ʾˋ:Lᐧⁱ/ᴵˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lᐧⁱ/ˏי;->ٴʼ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v19, :cond_16

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    :cond_16
    invoke-virtual {v1}, Lᐧⁱ/ˊʻ;->ˉˆ()V

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﹳᐧ()V

    return-void
.end method

.method private setImageOutput(Lʽⁱ/ᵔٴ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˑٴ:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˋᵔ:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˊˋ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static ﹳٴ(Lar/tvplayer/tv/player/ui/CustomPlayerView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lᐧⁱ/ˊʻ;->setImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˈ()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﹳᐧ()V

    :cond_0
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ⁱˊ()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ˊʻ:Lᐧⁱ/ᴵᵔ;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ʻᵎ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lᐧⁱ/ᴵᵔ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lᐧⁱ/ˏי;->ˆʾ()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return v3

    :cond_3
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, Lᐧⁱ/ˏי;->ˈ(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {p0, v3}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return v3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    :cond_6
    return v2
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "L\u02bd\u2071/\ufe73\u0674;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵔٴ:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v2, Lʽⁱ/ﹳٴ;

    invoke-direct {v2, v1}, Lʽⁱ/ﹳٴ;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz v1, :cond_1

    new-instance v2, Lʽⁱ/ﹳٴ;

    invoke-direct {v2, v1}, Lʽⁱ/ﹳٴ;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    const-string v0, "exo_ad_overlay must be present for ad playback"

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˆﾞ:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    iget v0, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ᐧᴵ:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ᴵʼ:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lᐧⁱ/ˊʻ;->ᐧﾞ:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˉـ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    iget v0, p0, Lᐧⁱ/ˊʻ;->ᴵˑ:I

    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔٴ:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lʽⁱ/ᵔٴ;
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵎⁱ:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ـˏ:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    return-object v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .prologue
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﾞʻ()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˉٴ:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v1, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    invoke-virtual {p0, v0}, Lᐧⁱ/ˊʻ;->ᵔﹳ(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Lᐧⁱ/ʽ;)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lᐧⁱ/ʽ;)V

    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ᐧᴵ:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ᴵʼ:Z

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˉˆ()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lᐧⁱ/ٴﹶ;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setOnFullScreenModeChangedListener(Lᐧⁱ/ٴﹶ;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iput p1, p0, Lᐧⁱ/ˊʻ;->ᐧﾞ:I

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->ˆʾ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʼˎ()Z

    move-result p1

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->ˆʾ(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lᐧⁱ/ʽʽ;)V
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->setControllerVisibilityListener(Lᐧⁱ/יـ;)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lᐧⁱ/יـ;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, v0, Lᐧⁱ/ˏי;->ٴʼ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ﹳـ:Lᐧⁱ/יـ;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iput-object p1, p0, Lᐧⁱ/ˊʻ;->ﹳـ:Lᐧⁱ/יـ;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->setControllerVisibilityListener(Lᐧⁱ/ʽʽ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵎˊ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object p1, p0, Lᐧⁱ/ˊʻ;->ᵎᵔ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʼᐧ()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˉـ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lᐧⁱ/ˊʻ;->ˉـ:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->ᵔﹳ(Z)V

    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ʻᵎ:Z

    return-void
.end method

.method public setErrorMessageProvider(Lʽⁱ/ˉˆ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02bd\u2071/\u02c9\u02c6;",
            ")V"
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʼᐧ()V

    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Lᐧⁱ/ˈٴ;)V
    .locals 1

    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʾˋ:Lᐧⁱ/ᴵˊ;

    invoke-virtual {p1, v0}, Lᐧⁱ/ˏי;->setOnFullScreenModeChangedListener(Lᐧⁱ/ٴﹶ;)V

    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->ˉˆ(Z)V

    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lᐧⁱ/ˊʻ;->ᴵˑ:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lᐧⁱ/ˊʻ;->ᴵˑ:I

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﹳᐧ()V

    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ʿᵢ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ʿᵢ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->ᵔﹳ(Z)V

    :cond_0
    return-void
.end method

.method public setPlayer(Lʽⁱ/ᵔٴ;)V
    .locals 11

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lⁱי/ʼʼ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-ne v0, p1, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    const/16 v4, 0x1b

    iget-object v5, p0, Lᐧⁱ/ˊʻ;->ʾˋ:Lᐧⁱ/ᴵˊ;

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    move-object v7, v0

    check-cast v7, Lⁱי/ʼʼ;

    invoke-virtual {v7, v5}, Lⁱי/ʼʼ;->ᵢʻ(Lʽⁱ/ᵔי;)V

    move-object v8, v0

    check-cast v8, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v8, v4}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v8

    if-eqz v8, :cond_5

    instance-of v8, v1, Landroid/view/TextureView;

    if-eqz v8, :cond_4

    move-object v8, v1

    check-cast v8, Landroid/view/TextureView;

    invoke-virtual {v7}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v9, v7, Lⁱי/ʼʼ;->ʾﾞ:Landroid/view/TextureView;

    if-ne v8, v9, :cond_5

    invoke-virtual {v7}, Lⁱי/ʼʼ;->ʽˑ()V

    goto :goto_3

    :cond_4
    instance-of v8, v1, Landroid/view/SurfaceView;

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-virtual {v7}, Lⁱי/ʼʼ;->ˏʻ()V

    if-eqz v8, :cond_5

    iget-object v9, v7, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    if-ne v8, v9, :cond_5

    invoke-virtual {v7}, Lⁱי/ʼʼ;->ʽˑ()V

    :cond_5
    :goto_3
    iget-object v7, p0, Lᐧⁱ/ˊʻ;->ˑٴ:Ljava/lang/Class;

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    iget-object v7, p0, Lᐧⁱ/ˊʻ;->ˋᵔ:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v3

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_5
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵎⁱ:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v6}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_7
    iput-object p1, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v7

    iget-object v8, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz v7, :cond_8

    invoke-virtual {v8, p1}, Lᐧⁱ/ˏי;->setPlayer(Lʽⁱ/ᵔٴ;)V

    :cond_8
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ᵔʾ()V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʼᐧ()V

    invoke-virtual {p0, v2}, Lᐧⁱ/ˊʻ;->ᵔﹳ(Z)V

    if-eqz p1, :cond_18

    move-object v7, p1

    check-cast v7, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v7, v4}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v4

    if-eqz v4, :cond_16

    instance-of v4, v1, Landroid/view/TextureView;

    if-eqz v4, :cond_c

    check-cast v1, Landroid/view/TextureView;

    move-object v4, p1

    check-cast v4, Lⁱי/ʼʼ;

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ʿʽ()V

    iput-object v1, v4, Lⁱי/ʼʼ;->ʾﾞ:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v8

    if-eqz v8, :cond_9

    const-string v8, "ExoPlayerImpl"

    const-string v9, "Replacing existing SurfaceTextureListener."

    invoke-static {v8, v9}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v8, v4, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    invoke-virtual {v1, v8}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    goto :goto_6

    :cond_a
    move-object v8, v6

    :goto_6
    if-nez v8, :cond_b

    invoke-virtual {v4, v6}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v3}, Lⁱי/ʼʼ;->ˆˑ(II)V

    goto/16 :goto_7

    :cond_b
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v4, v6}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    iput-object v6, v4, Lⁱי/ʼʼ;->ʼـ:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Lⁱי/ʼʼ;->ˆˑ(II)V

    goto/16 :goto_7

    :cond_c
    instance-of v4, v1, Landroid/view/SurfaceView;

    if-eqz v4, :cond_11

    check-cast v1, Landroid/view/SurfaceView;

    move-object v4, p1

    check-cast v4, Lⁱי/ʼʼ;

    iget-object v8, v4, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ˏʻ()V

    instance-of v9, v1, Lﾞˏ/ˏי;

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ʿʽ()V

    invoke-virtual {v4, v1}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v4, v1}, Lⁱי/ʼʼ;->ˆˎ(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_7

    :cond_d
    instance-of v9, v1, Lˊˊ/ٴﹶ;

    if-eqz v9, :cond_e

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ʿʽ()V

    move-object v6, v1

    check-cast v6, Lˊˊ/ٴﹶ;

    iput-object v6, v4, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    iget-object v6, v4, Lⁱי/ʼʼ;->ʿᵢ:Lⁱי/ـˆ;

    invoke-virtual {v4, v6}, Lⁱי/ʼʼ;->ˋˊ(Lⁱי/ʿ;)Lⁱי/ʿᵢ;

    move-result-object v6

    iget-boolean v9, v6, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/2addr v9, v2

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/16 v9, 0x2710

    iput v9, v6, Lⁱי/ʿᵢ;->ʽ:I

    iget-object v9, v4, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    iget-boolean v10, v6, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/2addr v10, v2

    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object v9, v6, Lⁱי/ʿᵢ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v6}, Lⁱי/ʿᵢ;->ⁱˊ()V

    iget-object v6, v4, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    iget-object v6, v6, Lˊˊ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    invoke-virtual {v6}, Lˊˊ/ٴﹶ;->getVideoSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v4, v6}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v4, v1}, Lⁱי/ʼʼ;->ˆˎ(Landroid/view/SurfaceHolder;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ˏʻ()V

    if-nez v1, :cond_f

    invoke-virtual {v4}, Lⁱי/ʼʼ;->ʽˑ()V

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Lⁱי/ʼʼ;->ʿʽ()V

    iput-boolean v2, v4, Lⁱי/ʼʼ;->ʽⁱ:Z

    iput-object v1, v4, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v4, v8}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Lⁱי/ʼʼ;->ˆˑ(II)V

    goto :goto_7

    :cond_10
    invoke-virtual {v4, v6}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v3}, Lⁱי/ʼʼ;->ˆˑ(II)V

    :cond_11
    :goto_7
    const/16 v1, 0x1e

    invoke-virtual {v7, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v1

    iget-object v1, v1, Lʽⁱ/ʿᵢ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    move v4, v3

    :goto_8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_14

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ʿ;

    iget-object v6, v6, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    iget v6, v6, Lʽⁱ/ـˏ;->ʽ:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_13

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ʿ;

    move v8, v3

    :goto_9
    iget-object v9, v6, Lʽⁱ/ʿ;->ˈ:[I

    array-length v9, v9

    if-ge v8, v9, :cond_13

    invoke-virtual {v6, v8}, Lʽⁱ/ʿ;->ﹳٴ(I)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    move v2, v3

    :goto_a
    if-eqz v2, :cond_16

    :cond_15
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˉʿ()V

    :cond_16
    if-eqz v0, :cond_17

    const/16 v1, 0x1c

    invoke-virtual {v7, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, p1

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v1, v1, Lⁱי/ʼʼ;->ﹳⁱ:Lⁱˉ/ʽ;

    iget-object v1, v1, Lⁱˉ/ʽ;->ﹳٴ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_17
    move-object v0, p1

    check-cast v0, Lⁱי/ʼʼ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Lᐧˎ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lᐧⁱ/ˊʻ;->setImageOutput(Lʽⁱ/ᵔٴ;)V

    invoke-virtual {p0, v3}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return-void

    :cond_18
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    :cond_19
    :goto_b
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .prologue
    iget v0, p0, Lᐧⁱ/ˊʻ;->ʿ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lᐧⁱ/ˊʻ;->ʿ:I

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ᵔʾ()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setShutterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ˊᵔ:Z

    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lᐧⁱ/ˏי;->setTimeBarScrubbingEnabled(Z)V

    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ـˏ:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Lᐧⁱ/ˊʻ;->ـˏ:Z

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v2, p1}, Lᐧⁱ/ˏי;->setPlayer(Lʽⁱ/ᵔٴ;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lᐧⁱ/ˏי;->setPlayer(Lʽⁱ/ᵔٴ;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˉˆ()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final ʼˎ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result v0

    iget-boolean v2, p0, Lᐧⁱ/ˊʻ;->ᐧᴵ:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    const/16 v3, 0x11

    check-cast v2, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v2, v3}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v2

    invoke-virtual {v2}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼᐧ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵎˊ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵎᵔ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v1, :cond_1

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v1, v1, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v1, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final ʽ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˊˋ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    move-object v2, v0

    check-cast v2, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v2, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lʽⁱ/ʿᵢ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˆʾ(Z)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lᐧⁱ/ˊʻ;->ᐧﾞ:I

    :goto_0
    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-virtual {v1, p1}, Lᐧⁱ/ˏי;->setShowTimeoutMs(I)V

    iget-object p1, v1, Lᐧⁱ/ˏי;->ʾˋ:Lᐧⁱ/ʼʼ;

    iget-object v1, p1, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {v1}, Lᐧⁱ/ˏי;->ﾞʻ()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lᐧⁱ/ˏי;->ˉʿ()V

    iget-object v0, v1, Lᐧⁱ/ˏי;->ﹳـ:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p1}, Lᐧⁱ/ʼʼ;->ٴﹶ()V

    return-void
.end method

.method public final ˈ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    move-object v2, v0

    check-cast v2, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v2, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lʽⁱ/ʿᵢ;->ﹳٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʿ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_0

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, v0, Lⁱי/ʼʼ;->ٴᴵ:Lʽⁱ/ˏᵢ;

    goto :goto_0

    :cond_0
    sget-object v0, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    :goto_0
    iget v1, v0, Lʽⁱ/ˏᵢ;->ﹳٴ:I

    iget v2, v0, Lʽⁱ/ˏᵢ;->ⁱˊ:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v0, v0, Lʽⁱ/ˏᵢ;->ʽ:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ᴵᵔ:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    return-void
.end method

.method public final ˉˆ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lᐧⁱ/ˊʻ;->ـˏ:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lᐧⁱ/ˏי;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lᐧⁱ/ˊʻ;->ᴵʼ:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˑﹳ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final יـ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ـˏ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final ᵎﹶ(Z)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʼˎ()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lᐧⁱ/ˊʻ;->ˆʾ(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract ᵔʾ()V
.end method

.method public final ᵔᵢ(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lᐧⁱ/ˊʻ;->ˉٴ:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v4, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v4, p0, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final ᵔﹳ(Z)V
    .locals 9

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v3, 0x1e

    move-object v4, v0

    check-cast v4, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v4, v3}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lⁱי/ʼʼ;

    invoke-virtual {v3}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v3

    iget-object v3, v3, Lʽⁱ/ʿᵢ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lᐧⁱ/ˊʻ;->ʿᵢ:Z

    const v5, 0x106000d

    const/4 v6, 0x4

    iget-object v7, p0, Lᐧⁱ/ˊʻ;->ˉٴ:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˑﹳ()V

    :cond_3
    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˈ()Z

    move-result p1

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ʽ()Z

    move-result v3

    if-nez p1, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ⁱˊ()V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˑﹳ()V

    :cond_5
    iget-object v4, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    iget-object v8, p0, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_7

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v3, :cond_8

    if-nez p1, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ⁱˊ()V

    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ﹳᐧ()V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    if-nez v3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->ˑﹳ()V

    :cond_9
    :goto_3
    if-nez p1, :cond_e

    if-nez v3, :cond_e

    iget p1, p0, Lᐧⁱ/ˊʻ;->ˈⁱ:I

    if-eqz p1, :cond_e

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    if-eqz v0, :cond_c

    const/16 p1, 0x12

    move-object v1, v0

    check-cast v1, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v1, p1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object p1, v0, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    iget-object p1, p1, Lʽⁱ/ᴵᵔ;->ﾞᴵ:[B

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    array-length v0, p1

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lᐧⁱ/ˊʻ;->ᵔᵢ(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lᐧⁱ/ˊʻ;->ˉـ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lᐧⁱ/ˊʻ;->ᵔᵢ(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ˊᵔ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lᐧⁱ/ˊʻ;->ـﹶ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lᐧⁱ/ˊʻ;->ٴﹶ(Z)V

    :cond_0
    return-void
.end method

.method public final ﹳᐧ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v2, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, Lᐧⁱ/ˊʻ;->ᴵˑ:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lᐧⁱ/ˊʻ;->ᴵˊ:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final ﾞʻ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᐧⁱ/ˊʻ;->יـ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->ˆʾ()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lᐧⁱ/ˊʻ;->ᴵʼ:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Lʽⁱ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
