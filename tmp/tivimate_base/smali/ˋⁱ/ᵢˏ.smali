.class public final Lˋⁱ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[[I

.field public ˈ:[Lˋⁱ/ˈ;

.field public ⁱˊ:Lˋⁱ/ˈ;

.field public ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [[I

    iput-object v1, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    new-array v0, v0, [Lˋⁱ/ˈ;

    iput-object v0, p0, Lˋⁱ/ᵢˏ;->ˈ:[Lˋⁱ/ˈ;

    return-void
.end method

.method public static ⁱˊ(Lˋⁱ/ˈ;)Lˋⁱ/ᵢˏ;
    .locals 2

    new-instance v0, Lˋⁱ/ᵢˏ;

    invoke-direct {v0}, Lˋⁱ/ᵢˏ;-><init>()V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1, p0}, Lˋⁱ/ᵢˏ;->ﹳٴ([ILˋⁱ/ˈ;)V

    return-object v0
.end method


# virtual methods
.method public final ʽ([I)Lˋⁱ/ˈ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-gez v2, :cond_4

    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v0, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    :goto_2
    iget v2, p0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v2, v4

    :cond_4
    if-gez v2, :cond_5

    iget-object p1, p0, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    return-object p1

    :cond_5
    iget-object p1, p0, Lˋⁱ/ᵢˏ;->ˈ:[Lˋⁱ/ˈ;

    aget-object p1, p1, v2

    return-object p1
.end method

.method public final ˈ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
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

    sget-object v3, Lיﹶ/ﹳٴ;->ᵢˏ:[I

    const/4 v4, 0x0

    if-nez p4, :cond_3

    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p4, p3, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_1
    new-instance v3, Lˋⁱ/ﹳٴ;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lˋⁱ/ﹳٴ;-><init>(F)V

    const/4 v5, 0x5

    invoke-static {v2, v5, v3}, Lˋⁱ/ᵔʾ;->ᵔᵢ(Landroid/content/res/TypedArray;ILˋⁱ/ˈ;)Lˋⁱ/ˈ;

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

    const v9, 0x7f0401b8

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

    invoke-virtual {p0, v2, v3}, Lˋⁱ/ᵢˏ;->ﹳٴ([ILˋⁱ/ˈ;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final ﹳٴ([ILˋⁱ/ˈ;)V
    .locals 5

    .prologue
    iget v0, p0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    if-eqz v0, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iput-object p2, p0, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    :cond_1
    iget-object v1, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v0, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    new-array v1, v2, [Lˋⁱ/ˈ;

    iget-object v2, p0, Lˋⁱ/ᵢˏ;->ˈ:[Lˋⁱ/ˈ;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lˋⁱ/ᵢˏ;->ˈ:[Lˋⁱ/ˈ;

    :cond_2
    iget-object v0, p0, Lˋⁱ/ᵢˏ;->ʽ:[[I

    iget v1, p0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lˋⁱ/ᵢˏ;->ˈ:[Lˋⁱ/ˈ;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lˋⁱ/ᵢˏ;->ﹳٴ:I

    return-void
.end method
