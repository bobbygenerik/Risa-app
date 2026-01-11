.class public final Lˋⁱ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋⁱ/ﾞʻ;


# instance fields
.field public final ʽ:[[I

.field public final ˈ:[Lˋⁱ/ᵔʾ;

.field public final ˑﹳ:Lˋⁱ/ᵢˏ;

.field public final ᵎﹶ:Lˋⁱ/ᵢˏ;

.field public final ᵔᵢ:Lˋⁱ/ᵢˏ;

.field public final ⁱˊ:Lˋⁱ/ᵔʾ;

.field public final ﹳٴ:I

.field public final ﾞᴵ:Lˋⁱ/ᵢˏ;


# direct methods
.method public constructor <init>(Lˊﹶ/ⁱˊ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    iput v0, p0, Lˋⁱ/ʾˋ;->ﹳٴ:I

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˋⁱ/ᵔʾ;

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ⁱˊ:Lˋⁱ/ᵔʾ;

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, [[I

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ʽ:[[I

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v0, [Lˋⁱ/ᵔʾ;

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ˈ:[Lˋⁱ/ᵔʾ;

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lˋⁱ/ᵢˏ;

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ˑﹳ:Lˋⁱ/ᵢˏ;

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lˋⁱ/ᵢˏ;

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ﾞᴵ:Lˋⁱ/ᵢˏ;

    iget-object v0, p1, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Lˋⁱ/ᵢˏ;

    iput-object v0, p0, Lˋⁱ/ʾˋ;->ᵎﹶ:Lˋⁱ/ᵢˏ;

    iget-object p1, p1, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast p1, Lˋⁱ/ᵢˏ;

    iput-object p1, p0, Lˋⁱ/ʾˋ;->ᵔᵢ:Lˋⁱ/ᵢˏ;

    return-void
.end method

.method public static ᵎﹶ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lˋⁱ/ʾˋ;
    .locals 5

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    new-instance v0, Lˊﹶ/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˊﹶ/ⁱˊ;-><init>(I)V

    invoke-virtual {v0}, Lˊﹶ/ⁱˊ;->ˑﹳ()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, p0, p1, v1, v2}, Lˋⁱ/ʾˋ;->ﾞᴵ(Lˊﹶ/ⁱˊ;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_4
    :try_start_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz p1, :cond_5

    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    invoke-virtual {v0}, Lˊﹶ/ⁱˊ;->ˑﹳ()V

    :goto_5
    iget p0, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    new-instance p2, Lˋⁱ/ʾˋ;

    invoke-direct {p2, v0}, Lˋⁱ/ʾˋ;-><init>(Lˊﹶ/ⁱˊ;)V

    :goto_6
    return-object p2
.end method

.method public static ﾞᴵ(Lˊﹶ/ⁱˊ;Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11

    .prologue
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-gt v3, v0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lיﹶ/ﹳٴ;->יـ:[I

    const/4 v4, 0x0

    if-nez p4, :cond_3

    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p4, p3, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    new-instance v6, Lˋⁱ/ﹳٴ;

    int-to-float v7, v4

    invoke-direct {v6, v7}, Lˋⁱ/ﹳٴ;-><init>(F)V

    invoke-static {p1, v3, v5, v6}, Lˋⁱ/ᵔʾ;->ﾞᴵ(Landroid/content/Context;IILˋⁱ/ﹳٴ;)Lˋⁱ/ˉʿ;

    move-result-object v3

    invoke-virtual {v3}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    new-array v5, v2, [I

    move v6, v4

    move v7, v6

    :goto_2
    if-ge v6, v2, :cond_6

    invoke-interface {p3, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    const v9, 0x7f040558

    if-eq v8, v9, :cond_5

    const v9, 0x7f040563

    if-eq v8, v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    invoke-interface {p3, v6, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    neg-int v8, v8

    :goto_3
    aput v8, v5, v7

    move v7, v9

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v5, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lˊﹶ/ⁱˊ;->ﹳٴ([ILˋⁱ/ᵔʾ;)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public final ʽ([I)Lˋⁱ/ᵔʾ;
    .locals 6

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    iget v3, p0, Lˋⁱ/ʾˋ;->ﹳٴ:I

    iget-object v4, p0, Lˋⁱ/ʾˋ;->ʽ:[[I

    if-ge v1, v3, :cond_1

    aget-object v5, v4, v1

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-gez v1, :cond_4

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v5, v4, v0

    invoke-static {v5, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v1, v2

    :cond_4
    iget-object v0, p0, Lˋⁱ/ʾˋ;->ˈ:[Lˋⁱ/ᵔʾ;

    iget-object v2, p0, Lˋⁱ/ʾˋ;->ᵔᵢ:Lˋⁱ/ᵢˏ;

    iget-object v3, p0, Lˋⁱ/ʾˋ;->ᵎﹶ:Lˋⁱ/ᵢˏ;

    iget-object v4, p0, Lˋⁱ/ʾˋ;->ﾞᴵ:Lˋⁱ/ᵢˏ;

    iget-object v5, p0, Lˋⁱ/ʾˋ;->ˑﹳ:Lˋⁱ/ᵢˏ;

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    aget-object p1, v0, v1

    return-object p1

    :cond_5
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v0

    if-eqz v5, :cond_6

    invoke-virtual {v5, p1}, Lˋⁱ/ᵢˏ;->ʽ([I)Lˋⁱ/ˈ;

    move-result-object v1

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, p1}, Lˋⁱ/ᵢˏ;->ʽ([I)Lˋⁱ/ˈ;

    move-result-object v1

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3, p1}, Lˋⁱ/ᵢˏ;->ʽ([I)Lˋⁱ/ˈ;

    move-result-object v1

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Lˋⁱ/ᵢˏ;->ʽ([I)Lˋⁱ/ˈ;

    move-result-object p1

    iput-object p1, v0, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    :cond_9
    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()Lˋⁱ/ᵔʾ;
    .locals 1

    invoke-virtual {p0}, Lˋⁱ/ʾˋ;->ᵔᵢ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Z
    .locals 2

    .prologue
    iget v0, p0, Lˋⁱ/ʾˋ;->ﹳٴ:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lˋⁱ/ʾˋ;->ˑﹳ:Lˋⁱ/ᵢˏ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˋⁱ/ʾˋ;->ﾞᴵ:Lˋⁱ/ᵢˏ;

    if-eqz v0, :cond_1

    iget v0, v0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˋⁱ/ʾˋ;->ᵎﹶ:Lˋⁱ/ᵢˏ;

    if-eqz v0, :cond_2

    iget v0, v0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lˋⁱ/ʾˋ;->ᵔᵢ:Lˋⁱ/ᵢˏ;

    if-eqz v0, :cond_3

    iget v0, v0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final ᵔᵢ()Lˋⁱ/ᵔʾ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˋⁱ/ʾˋ;->ⁱˊ:Lˋⁱ/ᵔʾ;

    iget-object v1, p0, Lˋⁱ/ʾˋ;->ᵔᵢ:Lˋⁱ/ᵢˏ;

    iget-object v2, p0, Lˋⁱ/ʾˋ;->ᵎﹶ:Lˋⁱ/ᵢˏ;

    iget-object v3, p0, Lˋⁱ/ʾˋ;->ﾞᴵ:Lˋⁱ/ᵢˏ;

    iget-object v4, p0, Lˋⁱ/ʾˋ;->ˑﹳ:Lˋⁱ/ᵢˏ;

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lˋⁱ/ᵔʾ;->ٴﹶ()Lˋⁱ/ˉʿ;

    move-result-object v0

    if-eqz v4, :cond_1

    iget-object v4, v4, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    iput-object v4, v0, Lˋⁱ/ˉʿ;->ˑﹳ:Lˋⁱ/ˈ;

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, v3, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    iput-object v3, v0, Lˋⁱ/ˉʿ;->ﾞᴵ:Lˋⁱ/ˈ;

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, v2, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    iput-object v2, v0, Lˋⁱ/ˉʿ;->ᵔᵢ:Lˋⁱ/ˈ;

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v1, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    iput-object v1, v0, Lˋⁱ/ˉʿ;->ᵎﹶ:Lˋⁱ/ˈ;

    :cond_4
    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(F)Lˋⁱ/ᵔʾ;
    .locals 1

    invoke-virtual {p0}, Lˋⁱ/ʾˋ;->ᵔᵢ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˋⁱ/ᵔʾ;->ⁱˊ(F)Lˋⁱ/ᵔʾ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Lˋⁱ/ˆʾ;)Lˋⁱ/ᵔʾ;
    .locals 1

    invoke-virtual {p0}, Lˋⁱ/ʾˋ;->ᵔᵢ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˋⁱ/ᵔʾ;->ﹳٴ(Lˋⁱ/ˆʾ;)Lˋⁱ/ᵔʾ;

    move-result-object p1

    return-object p1
.end method
