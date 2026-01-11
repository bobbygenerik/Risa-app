.class public abstract Lٴˉ/ᵎﹶ;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final ᵎˊ:Ljava/lang/Object;


# instance fields
.field public final ʽʽ:Lˉˆ/ʿ;

.field public ʾˋ:I

.field public final ˈٴ:Lʼᵢ/יـ;

.field public ˉٴ:I

.field public ˊʻ:Lˋⁱ/ᵢˏ;

.field public ٴʼ:Z

.field public ٴᵢ:Lˋⁱ/ʾˋ;

.field public final ᴵˊ:Ljava/util/ArrayList;

.field public ᴵᵔ:[Ljava/lang/Integer;

.field public ᵎⁱ:Lˋⁱ/ʽʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const v0, 0x7f140584

    const v4, 0x7f0403ff

    invoke-static {p1, p2, v4, v0}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lٴˉ/ᵎﹶ;->ʾˋ:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ᴵˊ:Ljava/util/ArrayList;

    new-instance v0, Lˉˆ/ʿ;

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ʽʽ:Lˉˆ/ʿ;

    new-instance v0, Lʼᵢ/יـ;

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1}, Lʼᵢ/יـ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ˈٴ:Lʼᵢ/יـ;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f140584

    new-array v6, p1, [I

    sget-object v3, Lיﹶ/ﹳٴ;->ٴﹶ:[I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const-string v3, "No start tag found"

    const-string v4, "selector"

    const-string v5, "xml"

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_0

    :catch_0
    :goto_0
    move-object v0, v6

    goto :goto_5

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lˋⁱ/ʽʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v9, 0xa

    new-array v10, v9, [[I

    iput-object v10, v0, Lˋⁱ/ʽʽ;->ʽ:[[I

    new-array v9, v9, [Lˉˆ/ʿ;

    iput-object v9, v0, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v2, :cond_2

    if-eq v10, v7, :cond_2

    goto :goto_1

    :cond_2
    if-ne v10, v2, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v0, v1, v8, v9, v10}, Lˋⁱ/ʽʽ;->ﹳٴ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_4
    :try_start_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v8, :cond_5

    :try_start_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v9
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    :cond_6
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v1, p2, v0}, Lˋⁱ/ʾˋ;->ᵎﹶ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lˋⁱ/ʾˋ;

    move-result-object v8

    iput-object v8, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    if-nez v8, :cond_8

    new-instance v8, Lˊﹶ/ⁱˊ;

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v9, 0x7

    invoke-virtual {p2, v9, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    new-instance v10, Lˋⁱ/ﹳٴ;

    int-to-float v11, p1

    invoke-direct {v10, v11}, Lˋⁱ/ﹳٴ;-><init>(F)V

    invoke-static {v1, v0, v9, v10}, Lˋⁱ/ᵔʾ;->ﾞᴵ(Landroid/content/Context;IILˋⁱ/ﹳٴ;)Lˋⁱ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lˋⁱ/ˉʿ;->ﹳٴ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    invoke-direct {v8, v0}, Lˊﹶ/ⁱˊ;-><init>(Lˋⁱ/ᵔʾ;)V

    iget v0, v8, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    new-instance v6, Lˋⁱ/ʾˋ;

    invoke-direct {v6, v8}, Lˋⁱ/ʾˋ;-><init>(Lˊﹶ/ⁱˊ;)V

    :goto_6
    iput-object v6, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    :cond_8
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Lˋⁱ/ﹳٴ;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lˋⁱ/ﹳٴ;-><init>(F)V

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-nez v8, :cond_9

    invoke-static {p2, v0, v6}, Lˋⁱ/ᵔʾ;->ᵔᵢ(Landroid/content/res/TypedArray;ILˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v0

    invoke-static {v0}, Lˋⁱ/ᵢˏ;->ⁱˊ(Lˋⁱ/ˈ;)Lˋⁱ/ᵢˏ;

    move-result-object v0

    goto :goto_b

    :cond_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {p2, v0, v6}, Lˋⁱ/ᵔʾ;->ᵔᵢ(Landroid/content/res/TypedArray;ILˋⁱ/ˈ;)Lˋⁱ/ˈ;

    move-result-object v0

    invoke-static {v0}, Lˋⁱ/ᵢˏ;->ⁱˊ(Lˋⁱ/ˈ;)Lˋⁱ/ᵢˏ;

    move-result-object v0

    goto :goto_b

    :cond_a
    :try_start_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    new-instance v0, Lˋⁱ/ᵢˏ;

    invoke-direct {v0}, Lˋⁱ/ᵢˏ;-><init>()V

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    :goto_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v2, :cond_b

    if-eq v9, v7, :cond_b

    goto :goto_7

    :cond_b
    if-ne v9, v2, :cond_d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v8, v2}, Lˋⁱ/ᵢˏ;->ˈ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :cond_c
    :goto_8
    :try_start_8
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    :cond_d
    :try_start_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_9
    if-eqz v5, :cond_e

    :try_start_a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_a
    throw v1
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    invoke-static {v6}, Lˋⁱ/ᵢˏ;->ⁱˊ(Lˋⁱ/ˈ;)Lˋⁱ/ᵢˏ;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    :cond_f
    invoke-virtual {p2, v7, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lٴˉ/ᵎﹶ;->setEnabled(Z)V

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lٴˉ/ᵎﹶ;->setOverflowMode(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07020b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastVisibleChildIndex()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    return-void
.end method

.method public static ˈ(Landroid/view/ViewGroup$LayoutParams;)Lٴˉ/ﾞᴵ;
    .locals 1

    .prologue
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lٴˉ/ﾞᴵ;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lٴˉ/ﾞᴵ;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lٴˉ/ﾞᴵ;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    const-string p1, "MButtonGroup"

    const-string p2, "Child views must be of type MaterialButton."

    nop

    return-void

    :cond_0
    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ﾞᴵ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-super {p0, p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, p1}, Lٴˉ/ᵎﹶ;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    iget-object p2, p0, Lٴˉ/ᵎﹶ;->ʽʽ:Lˉˆ/ʿ;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lٴˉ/ˈ;)V

    iget-object p2, p0, Lٴˉ/ᵎﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearance()Lˋⁱ/ﾞʻ;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lٴˉ/ﾞᴵ;

    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lٴˉ/ᵎﹶ;->ˈٴ:Lʼᵢ/יـ;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lٴˉ/ᵎﹶ;->ᴵᵔ:[Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lٴˉ/ﾞᴵ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lٴˉ/ﾞᴵ;-><init>(II)V

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lٴˉ/ﾞᴵ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lٴˉ/ﾞᴵ;-><init>(II)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lٴˉ/ᵎﹶ;->ʽ(Landroid/util/AttributeSet;)Lٴˉ/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Lٴˉ/ᵎﹶ;->ˈ(Landroid/view/ViewGroup$LayoutParams;)Lٴˉ/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lٴˉ/ᵎﹶ;->ʽ(Landroid/util/AttributeSet;)Lٴˉ/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-static {p1}, Lٴˉ/ᵎﹶ;->ˈ(Landroid/view/ViewGroup$LayoutParams;)Lٴˉ/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public getButtonSizeChange()Lˋⁱ/ʽʽ;
    .locals 1

    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 1

    .prologue
    iget-object p1, p0, Lٴˉ/ᵎﹶ;->ᴵᵔ:[Ljava/lang/Integer;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "MButtonGroup"

    const-string v0, "Child order wasn\'t updated"

    nop

    return p2
.end method

.method public getInnerCornerSize()Lˋⁱ/ˈ;
    .locals 1

    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    iget-object v0, v0, Lˋⁱ/ᵢˏ;->ⁱˊ:Lˋⁱ/ˈ;

    return-object v0
.end method

.method public getInnerCornerSizeStateList()Lˋⁱ/ᵢˏ;
    .locals 1

    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    return-object v0
.end method

.method public getOverflowButtonIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getOverflowMode()I
    .locals 1

    iget v0, p0, Lٴˉ/ᵎﹶ;->ʾˋ:I

    return v0
.end method

.method public getShapeAppearance()Lˋⁱ/ᵔʾ;
    .locals 1

    .prologue
    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lˋⁱ/ʾˋ;->ᵔᵢ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    return v0
.end method

.method public getStateListShapeAppearance()Lˋⁱ/ʾˋ;
    .locals 1

    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ﾞᴵ()V

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ﹳٴ()V

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lٴˉ/ˈ;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ﾞᴵ()V

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ﹳٴ()V

    return-void
.end method

.method public setButtonSizeChange(Lˋⁱ/ʽʽ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ⁱˊ()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInnerCornerSize(Lˋⁱ/ˈ;)V
    .locals 0

    invoke-static {p1}, Lˋⁱ/ᵢˏ;->ⁱˊ(Lˋⁱ/ˈ;)Lˋⁱ/ᵢˏ;

    move-result-object p1

    iput-object p1, p0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerCornerSizeStateList(Lˋⁱ/ᵢˏ;)V
    .locals 0

    iput-object p1, p0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setOverflowButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public setOverflowButtonIconResource(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public setOverflowMode(I)V
    .locals 1

    .prologue
    iget v0, p0, Lٴˉ/ᵎﹶ;->ʾˋ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lٴˉ/ᵎﹶ;->ʾˋ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShapeAppearance(Lˋⁱ/ᵔʾ;)V
    .locals 1

    .prologue
    new-instance v0, Lˊﹶ/ⁱˊ;

    invoke-direct {v0, p1}, Lˊﹶ/ⁱˊ;-><init>(Lˋⁱ/ᵔʾ;)V

    iget p1, v0, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lˋⁱ/ʾˋ;

    invoke-direct {p1, v0}, Lˋⁱ/ʾˋ;-><init>(Lˊﹶ/ⁱˊ;)V

    :goto_0
    iput-object p1, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setStateListShapeAppearance(Lˋⁱ/ʾˋ;)V
    .locals 0

    iput-object p1, p0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {p0}, Lٴˉ/ᵎﹶ;->ᵎﹶ()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final ʽ(Landroid/util/AttributeSet;)Lٴˉ/ﾞᴵ;
    .locals 3

    new-instance v0, Lٴˉ/ﾞᴵ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Lיﹶ/ﹳٴ;->ﾞʻ:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public final ˑﹳ(I)Z
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵎﹶ()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    if-nez v1, :cond_0

    iget-object v1, v0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    if-eqz v1, :cond_15

    :cond_0
    iget-boolean v1, v0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    if-nez v1, :cond_1

    goto/16 :goto_d

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lٴˉ/ᵎﹶ;->ٴʼ:Z

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {v0}, Lٴˉ/ᵎﹶ;->getFirstVisibleChildIndex()I

    move-result v3

    invoke-direct {v0}, Lٴˉ/ᵎﹶ;->getLastVisibleChildIndex()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_15

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    goto/16 :goto_c

    :cond_2
    if-ne v5, v3, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-ne v5, v4, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    iget-object v10, v0, Lٴˉ/ᵎﹶ;->ٴᵢ:Lˋⁱ/ʾˋ;

    iget-object v11, v0, Lٴˉ/ᵎﹶ;->ᴵˊ:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    if-nez v8, :cond_6

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lˋⁱ/ﾞʻ;

    :cond_6
    :goto_3
    instance-of v12, v10, Lˋⁱ/ʾˋ;

    if-nez v12, :cond_7

    new-instance v10, Lˊﹶ/ⁱˊ;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˋⁱ/ᵔʾ;

    invoke-direct {v10, v11}, Lˊﹶ/ⁱˊ;-><init>(Lˋⁱ/ᵔʾ;)V

    goto :goto_4

    :cond_7
    check-cast v10, Lˋⁱ/ʾˋ;

    new-instance v11, Lˊﹶ/ⁱˊ;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lˊﹶ/ⁱˊ;-><init>(I)V

    iget v12, v10, Lˋⁱ/ʾˋ;->ﹳٴ:I

    iput v12, v11, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    iget-object v13, v10, Lˋⁱ/ʾˋ;->ⁱˊ:Lˋⁱ/ᵔʾ;

    iput-object v13, v11, Lˊﹶ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iget-object v13, v10, Lˋⁱ/ʾˋ;->ʽ:[[I

    array-length v14, v13

    new-array v14, v14, [[I

    iput-object v14, v11, Lˊﹶ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iget-object v15, v10, Lˋⁱ/ʾˋ;->ˈ:[Lˋⁱ/ᵔʾ;

    array-length v7, v15

    new-array v7, v7, [Lˋⁱ/ᵔʾ;

    iput-object v7, v11, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    invoke-static {v13, v1, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v11, Lˊﹶ/ⁱˊ;->ˑﹳ:Ljava/io/Serializable;

    check-cast v7, [Lˋⁱ/ᵔʾ;

    iget v12, v11, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    invoke-static {v15, v1, v7, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v10, Lˋⁱ/ʾˋ;->ˑﹳ:Lˋⁱ/ᵢˏ;

    iput-object v7, v11, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v7, v10, Lˋⁱ/ʾˋ;->ﾞᴵ:Lˋⁱ/ᵢˏ;

    iput-object v7, v11, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    iget-object v7, v10, Lˋⁱ/ʾˋ;->ᵎﹶ:Lˋⁱ/ᵢˏ;

    iput-object v7, v11, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    iget-object v7, v10, Lˋⁱ/ʾˋ;->ᵔᵢ:Lˋⁱ/ᵢˏ;

    iput-object v7, v11, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    move-object v10, v11

    :goto_4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    move v12, v1

    :goto_6
    if-eqz v7, :cond_c

    if-eqz v8, :cond_a

    const/4 v7, 0x5

    goto :goto_7

    :cond_a
    move v7, v1

    :goto_7
    if-eqz v9, :cond_b

    or-int/lit8 v7, v7, 0xa

    :cond_b
    if-eqz v12, :cond_e

    and-int/lit8 v8, v7, 0x5

    and-int/lit8 v7, v7, 0xa

    const/16 v16, 0x1

    shl-int/lit8 v8, v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    or-int/2addr v7, v8

    goto :goto_9

    :cond_c
    if-eqz v8, :cond_d

    const/4 v7, 0x3

    goto :goto_8

    :cond_d
    move v7, v1

    :goto_8
    if-eqz v9, :cond_e

    or-int/lit8 v7, v7, 0xc

    :cond_e
    :goto_9
    not-int v7, v7

    iget-object v8, v0, Lٴˉ/ᵎﹶ;->ˊʻ:Lˋⁱ/ᵢˏ;

    or-int/lit8 v9, v7, 0x1

    if-ne v9, v7, :cond_f

    iput-object v8, v10, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    :cond_f
    or-int/lit8 v9, v7, 0x2

    if-ne v9, v7, :cond_10

    iput-object v8, v10, Lˊﹶ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    :cond_10
    or-int/lit8 v9, v7, 0x4

    if-ne v9, v7, :cond_11

    iput-object v8, v10, Lˊﹶ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    :cond_11
    or-int/lit8 v9, v7, 0x8

    if-ne v9, v7, :cond_12

    iput-object v8, v10, Lˊﹶ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    :cond_12
    iget v7, v10, Lˊﹶ/ⁱˊ;->ⁱˊ:I

    if-nez v7, :cond_13

    const/4 v7, 0x0

    goto :goto_a

    :cond_13
    new-instance v7, Lˋⁱ/ʾˋ;

    invoke-direct {v7, v10}, Lˋⁱ/ʾˋ;-><init>(Lˊﹶ/ⁱˊ;)V

    :goto_a
    invoke-virtual {v7}, Lˋⁱ/ʾˋ;->ˑﹳ()Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v7}, Lˋⁱ/ʾˋ;->ᵔᵢ()Lˋⁱ/ᵔʾ;

    move-result-object v7

    :goto_b
    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearance(Lˋⁱ/ﾞʻ;)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_15
    :goto_d
    return-void
.end method

.method public final ⁱˊ()V
    .locals 12

    .prologue
    invoke-direct {p0}, Lٴˉ/ᵎﹶ;->getFirstVisibleChildIndex()I

    move-result v0

    invoke-direct {p0}, Lٴˉ/ᵎﹶ;->getLastVisibleChildIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    iget-object v2, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    const v2, 0x7fffffff

    move v3, v0

    :goto_0
    if-gt v3, v1, :cond_e

    invoke-virtual {p0, v3}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {p0, v3}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    iget-object v4, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    if-nez v4, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    iget-object v6, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v7, v4

    move v8, v5

    :goto_1
    iget v9, v6, Lˋⁱ/ʽʽ;->ﹳٴ:I

    if-ge v8, v9, :cond_5

    iget-object v9, v6, Lˋⁱ/ʽʽ;->ˈ:[Lˉˆ/ʿ;

    aget-object v9, v9, v8

    iget-object v9, v9, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v9, Lˋⁱ/ᴵˊ;

    iget v10, v9, Lˋⁱ/ᴵˊ;->ﹳٴ:I

    iget v9, v9, Lˋⁱ/ᴵˊ;->ⁱˊ:F

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    int-to-float v7, v7

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :goto_2
    float-to-int v7, v7

    goto :goto_3

    :cond_3
    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    int-to-float v7, v7

    int-to-float v10, v4

    mul-float/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v6, v3, -0x1

    :goto_4
    const/4 v7, 0x0

    if-ltz v6, :cond_7

    invoke-virtual {p0, v6}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    move-object v6, v7

    :goto_5
    if-nez v6, :cond_8

    move v6, v5

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v6

    :goto_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    :goto_7
    if-ge v9, v8, :cond_a

    invoke-virtual {p0, v9}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    goto :goto_8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getAllowedWidthDecrease()I

    move-result v5

    :goto_9
    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_c
    :goto_a
    if-eq v3, v0, :cond_d

    if-eq v3, v1, :cond_d

    div-int/lit8 v5, v5, 0x2

    :cond_d
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    move v3, v0

    :goto_c
    if-gt v3, v1, :cond_12

    invoke-virtual {p0, v3}, Lٴˉ/ᵎﹶ;->ˑﹳ(I)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    iget-object v5, p0, Lٴˉ/ᵎﹶ;->ᵎⁱ:Lˋⁱ/ʽʽ;

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setSizeChange(Lˋⁱ/ʽʽ;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eq v3, v0, :cond_11

    if-ne v3, v1, :cond_10

    goto :goto_d

    :cond_10
    mul-int/lit8 v5, v2, 0x2

    goto :goto_e

    :cond_11
    :goto_d
    move v5, v2

    :goto_e
    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setWidthChangeMax(I)V

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    :goto_10
    return-void
.end method

.method public final ﹳٴ()V
    .locals 9

    .prologue
    invoke-direct {p0}, Lٴˉ/ᵎﹶ;->getFirstVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v2, v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    iget v7, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    if-gtz v7, :cond_1

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    invoke-virtual {v6, v4}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    invoke-virtual {v6, v5}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    move v7, v5

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_2

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    :cond_2
    new-instance v6, Lٴˉ/ﾞᴵ;

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v8, v4}, Lٴˉ/ﾞᴵ;-><init>(II)V

    move-object v4, v6

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v6, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_3
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Lٴˉ/ᵎﹶ;->ˉٴ:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_8

    if-ne v0, v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_4

    :cond_6
    new-instance v1, Lٴˉ/ﾞᴵ;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v0}, Lٴˉ/ﾞᴵ;-><init>(II)V

    move-object v0, v1

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_7

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    :cond_7
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_8
    :goto_5
    return-void
.end method

.method public final ﾞᴵ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lcom/google/android/material/button/MaterialButton;->ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/button/MaterialButton;->ˈⁱ:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/google/android/material/button/MaterialButton;->ʼˈ:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
