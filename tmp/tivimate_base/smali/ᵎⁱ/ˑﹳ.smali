.class public abstract Lᵎⁱ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʽ:Landroid/graphics/Paint;

.field public static final ⁱˊ:Lˋˋ/ـˊ;

.field public static final ﹳٴ:Lﹳˋ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "TypefaceCompat static init"

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Lᵎⁱ/ٴﹶ;

    invoke-direct {v0}, Lﹳˋ/ٴﹶ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lᵎⁱ/ˆʾ;

    invoke-direct {v0}, Lﹳˋ/ٴﹶ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Lᵎⁱ/ʼˎ;

    invoke-direct {v0}, Lᵎⁱ/ᵔᵢ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    new-instance v0, Lᵎⁱ/ᵔᵢ;

    invoke-direct {v0}, Lᵎⁱ/ᵔᵢ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_0

    :cond_3
    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    sget-object v0, Lᵎⁱ/ᵎﹶ;->ˆﾞ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    nop

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Lᵎⁱ/ᵎﹶ;

    invoke-direct {v0}, Lﹳˋ/ٴﹶ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    goto :goto_0

    :cond_5
    new-instance v0, Lᵎⁱ/ﾞᴵ;

    invoke-direct {v0}, Lﹳˋ/ٴﹶ;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    :goto_0
    new-instance v0, Lˋˋ/ـˊ;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lˋˋ/ـˊ;-><init>(I)V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ⁱˊ:Lˋˋ/ـˊ;

    const/4 v0, 0x0

    sput-object v0, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static ˈ(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;
    .locals 10

    .prologue
    sget-object v0, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    :cond_0
    sget-object v0, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v8, 0x0

    sget-object v9, Lᵎⁱ/ˑﹳ;->ʽ:Landroid/graphics/Paint;

    const-string v1, " "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ﹳٴ(Landroid/content/Context;Lˉٴ/ˈ;Landroid/content/res/Resources;ILjava/lang/String;IILˉٴ/ⁱˊ;Z)Landroid/graphics/Typeface;
    .locals 16

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move/from16 v4, p6

    move-object/from16 v1, p7

    instance-of v3, v0, Lˉٴ/ᵎﹶ;

    const/16 v5, 0xe

    const/4 v6, -0x3

    if-eqz v3, :cond_16

    check-cast v0, Lˉٴ/ᵎﹶ;

    const-string v3, "TypefaceCompat"

    iget-object v7, v0, Lˉٴ/ᵎﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v8, :cond_0

    invoke-static {v7}, Lᵎⁱ/ˑﹳ;->ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    if-eqz v7, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v7, v0, Lˉٴ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔٴ/ˈ;

    iget-object v3, v3, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v3}, Lᵎⁱ/ˑﹳ;->ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    goto/16 :goto_6

    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-ge v8, v12, :cond_2

    :goto_0
    move-object v7, v9

    goto/16 :goto_6

    :cond_2
    move v8, v11

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lᵔٴ/ˈ;

    iget-object v12, v12, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v12}, Lᵎⁱ/ˑﹳ;->ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object v12, v9

    move v8, v11

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lᵔٴ/ˈ;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v10

    if-ne v8, v14, :cond_5

    iget-object v14, v13, Lᵔٴ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v3, v13, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    goto :goto_5

    :cond_5
    iget-object v14, v13, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    iget-object v15, v13, Lᵔٴ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v14}, Lᵎⁱ/ˑﹳ;->ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-static {v14}, Lᵎⁱ/ˑﹳ;->ˈ(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    move-result-object v14

    if-nez v14, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable identify the primary font for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v13, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Falling back to provider font."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    goto :goto_0

    :cond_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    :try_start_0
    new-instance v13, Landroid/graphics/fonts/FontFamily$Builder;

    new-instance v13, Landroid/graphics/fonts/Font$Builder;

    invoke-static {v14}, Lˋᵔ/ʽ;->ﹳٴ(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v13

    new-instance v14, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v14, v13}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v14}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v7, "Failed to clone Font instance. Fall back to provider font."

    nop

    goto/16 :goto_0

    :cond_7
    new-instance v13, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v13, v14}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v13}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v13

    :goto_3
    if-nez v12, :cond_8

    new-instance v12, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v12, v13}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v12, v13}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_5
    invoke-virtual {v12}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v7

    :goto_6
    if-eqz v7, :cond_b

    if-eqz v1, :cond_a

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lʻʿ/ᵔʾ;

    invoke-direct {v2, v1, v5, v7}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    sget-object v0, Lᵎⁱ/ˑﹳ;->ⁱˊ:Lˋˋ/ـˊ;

    invoke-static/range {p2 .. p6}, Lᵎⁱ/ˑﹳ;->ⁱˊ(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_b
    if-eqz p8, :cond_d

    iget v3, v0, Lˉٴ/ᵎﹶ;->ʽ:I

    if-nez v3, :cond_c

    :goto_7
    move v3, v10

    goto :goto_8

    :cond_c
    move v3, v11

    goto :goto_8

    :cond_d
    if-nez v1, :cond_c

    goto :goto_7

    :goto_8
    const/4 v5, -0x1

    if-eqz p8, :cond_e

    iget v7, v0, Lˉٴ/ᵎﹶ;->ⁱˊ:I

    goto :goto_9

    :cond_e
    move v7, v5

    :goto_9
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lᐧﹳ/ʽ;

    const/4 v13, 0x4

    invoke-direct {v12, v13, v11}, Lᐧﹳ/ʽ;-><init>(IZ)V

    iput-object v1, v12, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    iget-object v0, v0, Lˉٴ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v13, Lˑʼ/ᵎˊ;

    new-instance v1, Lˋˋ/ﾞᴵ;

    invoke-direct {v1, v8}, Lˋˋ/ﾞᴵ;-><init>(Landroid/os/Handler;)V

    const/16 v8, 0x10

    invoke-direct {v13, v12, v8, v1}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v8, 0x3

    const/16 v14, 0x16

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v10, :cond_11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lᵔٴ/ˈ;

    sget-object v0, Lᵔٴ/ᵎﹶ;->ﹳٴ:Lˋˋ/ـˊ;

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v3, v0, v11

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v0, v11

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lᵔٴ/ᵎﹶ;->ﹳٴ(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v15, Lᵔٴ/ᵎﹶ;->ﹳٴ:Lˋˋ/ـˊ;

    invoke-virtual {v15, v0}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Typeface;

    if-eqz v15, :cond_f

    new-instance v0, Lˋˋ/ˈ;

    invoke-direct {v0, v12, v15, v14, v11}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v0}, Lˋˋ/ﾞᴵ;->execute(Ljava/lang/Runnable;)V

    move-object v9, v15

    goto/16 :goto_d

    :cond_f
    if-ne v7, v5, :cond_10

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v3, v1, v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v11

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v2, v1, v4}, Lᵔٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lᵔٴ/ﾞᴵ;

    move-result-object v0

    invoke-virtual {v13, v0}, Lˑʼ/ᵎˊ;->ˈʿ(Lᵔٴ/ﾞᴵ;)V

    iget-object v9, v0, Lᵔٴ/ﾞᴵ;->ﹳٴ:Landroid/graphics/Typeface;

    goto/16 :goto_d

    :cond_10
    move-object v1, v0

    new-instance v0, Lᵔٴ/ˑﹳ;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lᵔٴ/ˑﹳ;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    :try_start_1
    sget-object v1, Lᵔٴ/ᵎﹶ;->ⁱˊ:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    int-to-long v1, v7

    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    check-cast v0, Lᵔٴ/ﾞᴵ;

    invoke-virtual {v13, v0}, Lˑʼ/ᵎˊ;->ˈʿ(Lᵔٴ/ﾞᴵ;)V

    iget-object v9, v0, Lᵔٴ/ﾞᴵ;->ﹳٴ:Landroid/graphics/Typeface;

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    throw v0

    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    iget-object v0, v13, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ﾞᴵ;

    iget-object v1, v13, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᐧﹳ/ʽ;

    new-instance v2, Landroidx/leanback/widget/ˏᵢ;

    invoke-direct {v2, v6, v8, v1}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lˋˋ/ﾞᴵ;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_d

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v4, v0}, Lᵔٴ/ᵎﹶ;->ﹳٴ(ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lᵔٴ/ᵎﹶ;->ﹳٴ:Lˋˋ/ـˊ;

    invoke-virtual {v3, v2}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_13

    new-instance v0, Lˋˋ/ˈ;

    invoke-direct {v0, v12, v3, v14, v11}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v0}, Lˋˋ/ﾞᴵ;->execute(Ljava/lang/Runnable;)V

    move-object v9, v3

    goto :goto_d

    :cond_13
    new-instance v1, Lʼٴ/ʻٴ;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v13}, Lʼٴ/ʻٴ;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lᵔٴ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    sget-object v5, Lᵔٴ/ᵎﹶ;->ˈ:Lיـ/ﹳᐧ;

    invoke-virtual {v5, v2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_14

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2, v6}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v0

    new-instance v0, Lᵔٴ/ˑﹳ;

    const/4 v5, 0x1

    move-object v1, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lᵔٴ/ˑﹳ;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V

    sget-object v2, Lᵔٴ/ᵎﹶ;->ⁱˊ:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lʼٴ/ʻٴ;

    invoke-direct {v3, v8, v1}, Lʼٴ/ʻٴ;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_15

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_c

    :cond_15
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_c
    new-instance v5, Lʼٴ/ـˆ;

    invoke-direct {v5}, Lʼٴ/ـˆ;-><init>()V

    iput-object v0, v5, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object v3, v5, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v5, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_d
    move-object/from16 v7, p2

    goto :goto_f

    :goto_e
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_16
    sget-object v3, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    check-cast v0, Lˉٴ/ˑﹳ;

    move-object/from16 v7, p2

    invoke-virtual {v3, v2, v0, v7, v4}, Lﹳˋ/ٴﹶ;->ˆʾ(Landroid/content/Context;Lˉٴ/ˑﹳ;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v9

    if-eqz v1, :cond_18

    if-eqz v9, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lʻʿ/ᵔʾ;

    invoke-direct {v2, v1, v5, v9}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_17
    invoke-virtual {v1, v6}, Lˉٴ/ⁱˊ;->ﹳٴ(I)V

    :cond_18
    :goto_f
    if-eqz v9, :cond_19

    sget-object v0, Lᵎⁱ/ˑﹳ;->ⁱˊ:Lˋˋ/ـˊ;

    invoke-static/range {p2 .. p6}, Lᵎⁱ/ˑﹳ;->ⁱˊ(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v9
.end method
