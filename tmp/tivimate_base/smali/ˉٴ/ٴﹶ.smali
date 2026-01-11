.class public abstract Lˉٴ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/lang/Object;

.field public static final ⁱˊ:Ljava/util/WeakHashMap;

.field public static final ﹳٴ:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lˉٴ/ٴﹶ;->ﹳٴ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lˉٴ/ٴﹶ;->ⁱˊ:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˉٴ/ٴﹶ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public static ⁱˊ(Landroid/content/Context;ILandroid/util/TypedValue;ILˉٴ/ⁱˊ;ZZ)Landroid/graphics/Typeface;
    .locals 12

    .prologue
    move-object/from16 v7, p4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const-string v9, "ResourcesCompat"

    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "res/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, -0x3

    if-nez v0, :cond_0

    if-eqz v7, :cond_9

    invoke-virtual {v7, v11}, Lˉٴ/ⁱˊ;->ﹳٴ(I)V

    goto/16 :goto_4

    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->assetCookie:I

    sget-object v6, Lᵎⁱ/ˑﹳ;->ⁱˊ:Lˋˋ/ـˊ;

    invoke-static {v2, p1, v4, v0, p3}, Lᵎⁱ/ˑﹳ;->ⁱˊ(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    if-eqz v7, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lʻʿ/ᵔʾ;

    const/16 p3, 0xe

    invoke-direct {p2, v7, p3, v0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    move-object v10, v0

    goto/16 :goto_4

    :cond_2
    if-eqz p6, :cond_3

    goto/16 :goto_4

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0, v2}, Lˉٴ/ⁱˊ;->ٴﹶ(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lˉٴ/ˈ;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "Failed to find font-family tag"

    nop

    if-eqz v7, :cond_9

    invoke-virtual {v7, v11}, Lˉٴ/ⁱˊ;->ﹳٴ(I)V

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_4
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    move-object v0, p0

    move v3, p1

    move v6, p3

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lᵎⁱ/ˑﹳ;->ﹳٴ(Landroid/content/Context;Lˉٴ/ˈ;Landroid/content/res/Resources;ILjava/lang/String;IILˉٴ/ⁱˊ;Z)Landroid/graphics/Typeface;

    move-result-object v10

    goto :goto_4

    :cond_5
    iget p2, p2, Landroid/util/TypedValue;->assetCookie:I

    sget-object v0, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    move-object v1, p0

    move v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lﹳˋ/ٴﹶ;->ᵔʾ(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {v2, p1, v4, p2, p3}, Lᵎⁱ/ˑﹳ;->ⁱˊ(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2, p0}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v7, :cond_7

    if-eqz p0, :cond_8

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lʻʿ/ᵔʾ;

    const/16 v0, 0xe

    invoke-direct {p3, v7, v0, p0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    move-object v10, p0

    goto :goto_4

    :cond_8
    invoke-virtual {v7, v11}, Lˉٴ/ⁱˊ;->ﹳٴ(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string p2, "Failed to read xml resource "

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    goto :goto_3

    :goto_2
    const-string p2, "Failed to parse xml resource "

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v7, v11}, Lˉٴ/ⁱˊ;->ﹳٴ(I)V

    :cond_9
    :goto_4
    if-nez v10, :cond_b

    if-nez v7, :cond_b

    if-eqz p6, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Font resource ID #0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be retrieved."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    return-object v10

    :cond_c
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Resource \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a Font: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﹳٴ(Lˉٴ/ʼˎ;ILandroid/content/res/ColorStateList;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    sget-object v0, Lˉٴ/ٴﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉٴ/ٴﹶ;->ⁱˊ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lˉٴ/ᵔᵢ;

    iget-object p0, p0, Lˉٴ/ʼˎ;->ﹳٴ:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lˉٴ/ᵔᵢ;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
