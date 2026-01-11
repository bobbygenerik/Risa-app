.class public final Lˋⁱ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[[I

.field public ˈ:[Lˉˆ/ʿ;

.field public ⁱˊ:Lˉˆ/ʿ;

.field public ﹳٴ:I


# virtual methods
.method public final ﹳٴ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
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

    if-eq v2, v1, :cond_d

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_d

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

    sget-object v3, Lיﹶ/ﹳٴ;->ʽʽ:[I

    const/4 v5, 0x0

    if-nez p4, :cond_3

    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p4, p3, v3, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    new-instance v6, Lˋⁱ/ᴵˊ;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v6, v4, v3}, Lˋⁱ/ᴵˊ;-><init>(IF)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x6

    if-ne v6, v4, :cond_6

    new-instance v6, Lˋⁱ/ᴵˊ;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    invoke-direct {v6, v1, v3}, Lˋⁱ/ᴵˊ;-><init>(IF)V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    new-array v3, v2, [I

    move v4, v5

    move v7, v4

    :goto_4
    if-ge v4, v2, :cond_9

    invoke-interface {p3, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    const v9, 0x7f0406df

    if-eq v8, v9, :cond_8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {p3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    neg-int v8, v8

    :goto_5
    aput v8, v3, v7

    move v7, v9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-static {v3, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    new-instance v3, Lˉˆ/ʿ;

    const/16 v4, 0xc

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7}, Lˉˆ/ʿ;-><init>(IZ)V

    iput-object v6, v3, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    iget v4, p0, Lˋⁱ/ʽʽ;->ﹳٴ:I

    if-eqz v4, :cond_a

    array-length v6, v2

    if-nez v6, :cond_b

    :cond_a
    iput-object v3, p0, Lˋⁱ/ʽʽ;->ⁱˊ:Lˉˆ/ʿ;

    :cond_b
    iget-object v6, p0, Lˋⁱ/ʽʽ;->ʽ:[[I

    array-length v7, v6

    if-lt v4, v7, :cond_c

    add-int/lit8 v7, v4, 0xa

    new-array v8, v7, [[I

    invoke-static {v6, v5, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, p0, Lˋⁱ/ʽʽ;->ʽ:[[I

    new-array v6, v7, [Lˉˆ/ʿ;

    iget-object v7, p0, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    invoke-static {v7, v5, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, p0, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    :cond_c
    iget-object v4, p0, Lˋⁱ/ʽʽ;->ʽ:[[I

    iget v5, p0, Lˋⁱ/ʽʽ;->ﹳٴ:I

    aput-object v2, v4, v5

    iget-object v2, p0, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    aput-object v3, v2, v5

    add-int/2addr v5, v1

    iput v5, p0, Lˋⁱ/ʽʽ;->ﹳٴ:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method
