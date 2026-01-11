.class public final Lⁱ/ʽ;
.super Lˉˆ/ᵔﹳ;
.source "SourceFile"


# static fields
.field public static final ʿ:[I

.field public static final ʿᵢ:[I

.field public static final ᐧﾞ:I

.field public static final ᵎᵔ:[[I


# instance fields
.field public ʼˈ:[I

.field public ˆﾞ:Landroid/graphics/drawable/Drawable;

.field public ˈʿ:Landroid/content/res/ColorStateList;

.field public ˈⁱ:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final ˉـ:Lⁱ/ﹳٴ;

.field public ˉٴ:Z

.field public final ˊʻ:Ljava/util/LinkedHashSet;

.field public ˊˋ:I

.field public ˋᵔ:Landroid/graphics/PorterDuff$Mode;

.field public ˑٴ:Landroid/content/res/ColorStateList;

.field public ـˏ:Z

.field public ٴʼ:Z

.field public ٴᵢ:Landroid/content/res/ColorStateList;

.field public final ᴵˑ:Lʻˈ/ﾞᴵ;

.field public final ᴵᵔ:Ljava/util/LinkedHashSet;

.field public ᵎˊ:Ljava/lang/CharSequence;

.field public ᵎⁱ:Z

.field public ᵔי:Landroid/graphics/drawable/Drawable;

.field public ᵔٴ:Z

.field public ﹳـ:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f0405b9

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lⁱ/ʽ;->ʿ:[I

    const v0, 0x7f0405b8

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lⁱ/ʽ;->ʿᵢ:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    const v2, 0x101009e

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const v0, 0x10100a0

    filled-new-array {v2, v0}, [I

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const v3, -0x10100a0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const v2, -0x101009e

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v1, v4

    filled-new-array {v2, v3}, [I

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lⁱ/ʽ;->ᵎᵔ:[[I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    const-string v3, "btn_check_material_anim"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lⁱ/ʽ;->ᐧﾞ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const v0, 0x7f14063f

    const v4, 0x7f0400e6

    invoke-static {p1, p2, v4, v0}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v4}, Lˉˆ/ᵔﹳ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lⁱ/ʽ;->ᴵᵔ:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lⁱ/ʽ;->ˊʻ:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parser error"

    const-string v2, "AnimatedVDCompat"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v5, 0x7f0801cf

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-lt v0, v3, :cond_0

    new-instance v0, Lʻˈ/ﾞᴵ;

    invoke-direct {v0, p1, v8}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lˉٴ/ٴﹶ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v5, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance p1, Lʻˈ/ˑﹳ;

    iget-object v1, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {p1, v8, v1}, Lʻˈ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_0
    sget v0, Lʻˈ/ﾞᴵ;->ٴᵢ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v9, :cond_1

    if-eq v5, v7, :cond_1

    goto :goto_0

    :cond_1
    if-ne v5, v9, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-instance v11, Lʻˈ/ﾞᴵ;

    invoke-direct {v11, p1, v8}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v11, v5, v0, v3, v6}, Lʻˈ/ﾞᴵ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    move-object v0, v11

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    goto :goto_3

    :goto_2
    nop

    :goto_3
    move-object v0, v10

    :goto_4
    iput-object v0, p0, Lⁱ/ʽ;->ᴵˑ:Lʻˈ/ﾞᴵ;

    new-instance p1, Lⁱ/ﹳٴ;

    invoke-direct {p1, p0}, Lⁱ/ﹳٴ;-><init>(Lⁱ/ʽ;)V

    iput-object p1, p0, Lⁱ/ʽ;->ˉـ:Lⁱ/ﹳٴ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lⁱ/ʽ;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lⁱ/ʽ;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    invoke-interface {p0, v10}, Lﹳـ/ٴﹶ;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    new-array v6, v8, [I

    const v5, 0x7f14063f

    invoke-static {v1, p2, v4, v5}, Lˈᐧ/ٴﹶ;->ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v3, Lיﹶ/ﹳٴ;->ʼᐧ:[I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    new-instance p1, Lcom/parse/ٴʼ;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/parse/ٴʼ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p1, v9}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    const v0, 0x7f040349

    invoke-static {v1, v0, v8}, Lˈˋ/ʾˊ;->ᵢˏ(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v3, Lⁱ/ʽ;->ᐧﾞ:I

    if-ne v0, v3, :cond_3

    if-nez v2, :cond_3

    invoke-super {p0, v10}, Lˉˆ/ᵔﹳ;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801ce

    invoke-static {v1, v0}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    iput-boolean v7, p0, Lⁱ/ʽ;->ᵔٴ:Z

    iget-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const v0, 0x7f0801d0

    invoke-static {v1, v0}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    :cond_3
    const/4 v0, 0x3

    invoke-static {v1, p1, v0}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ˋᵔ:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xa

    invoke-virtual {p2, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lⁱ/ʽ;->ˉٴ:Z

    const/4 v0, 0x6

    invoke-virtual {p2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lⁱ/ʽ;->ᵎⁱ:Z

    const/16 v0, 0x9

    invoke-virtual {p2, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lⁱ/ʽ;->ٴʼ:Z

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lⁱ/ʽ;->ᵎˊ:Ljava/lang/CharSequence;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lⁱ/ʽ;->setCheckedState(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lⁱ/ʽ;->ˊˋ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ٴᵢ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040139

    invoke-static {p0, v1}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v0, v1}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04013c

    invoke-static {p0, v2}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v1, v2}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040170

    invoke-static {p0, v3}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v2, v3}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040156

    invoke-static {p0, v4}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-static {v3, v4}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2, v1}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v1

    invoke-static {v4, v2, v0}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v0

    const v4, 0x3f0a3d71    # 0.54f

    invoke-static {v4, v2, v3}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v4

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v2, v3}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v6

    invoke-static {v5, v2, v3}, Lʽٴ/ˈ;->ˏי(FII)I

    move-result v2

    filled-new-array {v1, v0, v4, v6, v2}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lⁱ/ʽ;->ᵎᵔ:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lⁱ/ʽ;->ٴᵢ:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lⁱ/ʽ;->ٴᵢ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/CheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0}, Lﹳـ/ٴﹶ;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ˋᵔ:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckedState()I
    .locals 1

    iget v0, p0, Lⁱ/ʽ;->ˊˋ:I

    return v0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lⁱ/ʽ;->ᵎˊ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    iget v0, p0, Lⁱ/ʽ;->ˊˋ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    iget-boolean v0, p0, Lⁱ/ʽ;->ˉٴ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lⁱ/ʽ;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 3

    .prologue
    const/4 v0, 0x2

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lⁱ/ʽ;->getCheckedState()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lⁱ/ʽ;->ʿ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lⁱ/ʽ;->ٴʼ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lⁱ/ʽ;->ʿᵢ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const v2, 0x10100a0

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    if-ne v1, v2, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput v2, v1, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    array-length v0, p1

    aput v2, v1, v0

    :goto_1
    iput-object v1, p0, Lⁱ/ʽ;->ʼˈ:[I

    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lⁱ/ʽ;->ᵎⁱ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lⁱ/ʽ;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, -0x1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lⁱ/ʽ;->ٴʼ:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lⁱ/ʽ;->ᵎˊ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lⁱ/ⁱˊ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lⁱ/ⁱˊ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lⁱ/ⁱˊ;->ʾˋ:I

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setCheckedState(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lⁱ/ⁱˊ;

    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lⁱ/ʽ;->getCheckedState()I

    move-result v0

    iput v0, v1, Lⁱ/ⁱˊ;->ʾˋ:I

    return-object v1
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lⁱ/ʽ;->ᵔٴ:Z

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ˋᵔ:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lⁱ/ʽ;->ˋᵔ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-interface {p0, p1}, Lﹳـ/ٴﹶ;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lⁱ/ʽ;->ﹳٴ()V

    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lⁱ/ʽ;->ᵎⁱ:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setCheckedState(I)V

    return-void
.end method

.method public setCheckedState(I)V
    .locals 3

    .prologue
    iget v0, p0, Lⁱ/ʽ;->ˊˋ:I

    if-eq v0, p1, :cond_7

    iput p1, p0, Lⁱ/ʽ;->ˊˋ:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lⁱ/ʽ;->ﹳـ:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lⁱ/ʽ;->getButtonStateDescription()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v2, p0, Lⁱ/ʽ;->ـˏ:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lⁱ/ʽ;->ـˏ:Z

    iget-object v1, p0, Lⁱ/ʽ;->ˊʻ:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    iget v1, p0, Lⁱ/ʽ;->ˊˋ:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lⁱ/ʽ;->ˈⁱ:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lⁱ/ʽ;->isChecked()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_5
    const/16 v1, 0x1a

    if-lt p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_6
    iput-boolean v0, p0, Lⁱ/ʽ;->ـˏ:Z

    :cond_7
    :goto_2
    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lⁱ/ʽ;->ᵎˊ:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorShown(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lⁱ/ʽ;->ٴʼ:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lⁱ/ʽ;->ٴʼ:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object p1, p0, Lⁱ/ʽ;->ᴵᵔ:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lⁱ/ʽ;->ˈⁱ:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lⁱ/ʽ;->ﹳـ:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lⁱ/ʽ;->getButtonStateDescription()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .prologue
    iput-boolean p1, p0, Lⁱ/ʽ;->ˉٴ:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lⁱ/ʽ;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lⁱ/ʽ;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Lⁱ/ʽ;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lⁱ/ʽ;->setChecked(Z)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 8

    .prologue
    iget-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lⁱ/ʽ;->ˋᵔ:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    iput-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lⁱ/ʽ;->ᵔٴ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lⁱ/ʽ;->ᴵˑ:Lʻˈ/ﾞᴵ;

    if-eqz v0, :cond_f

    iget-object v4, v0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v5, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lⁱ/ʽ;->ˉـ:Lⁱ/ﹳٴ;

    if-eqz v5, :cond_6

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v7, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    if-nez v7, :cond_5

    new-instance v7, Lʻˈ/ⁱˊ;

    invoke-direct {v7, v6}, Lʻˈ/ⁱˊ;-><init>(Lⁱ/ﹳٴ;)V

    iput-object v7, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    :cond_5
    iget-object v7, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_6
    iget-object v5, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    if-eqz v5, :cond_8

    iget-object v7, v4, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, v0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    :cond_8
    :goto_2
    iget-object v3, v0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v4, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    if-nez v4, :cond_9

    new-instance v4, Lʻˈ/ⁱˊ;

    invoke-direct {v4, v6}, Lʻˈ/ⁱˊ;-><init>(Lⁱ/ﹳٴ;)V

    iput-object v4, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    :cond_9
    iget-object v4, v6, Lⁱ/ﹳٴ;->ﹳٴ:Lʻˈ/ⁱˊ;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_3

    :cond_a
    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    iget-object v3, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    :cond_c
    iget-object v3, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v3, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    if-nez v3, :cond_e

    new-instance v3, Landroidx/leanback/widget/ᵔٴ;

    invoke-direct {v3, v2, v0}, Landroidx/leanback/widget/ᵔٴ;-><init>(ILjava/lang/Object;)V

    iput-object v3, v0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    :cond_e
    iget-object v3, v4, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_f
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_10

    iget-object v3, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    check-cast v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const v4, 0x7f0b00c8

    const v5, 0x7f0b0415

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    iget-object v3, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const v4, 0x7f0b01fa

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    :cond_10
    :goto_4
    iget-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_11

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_11
    iget-object v0, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lⁱ/ʽ;->ˑٴ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_12

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_12
    iget-object v0, p0, Lⁱ/ʽ;->ᵔי:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lⁱ/ʽ;->ˆﾞ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    move-object v0, v3

    goto :goto_8

    :cond_13
    if-nez v3, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-eq v6, v5, :cond_16

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-gt v4, v5, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gt v6, v5, :cond_17

    goto :goto_7

    :cond_17
    int-to-float v4, v4

    int-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v6, v5

    div-float/2addr v6, v4

    float-to-int v6, v6

    move v4, v5

    goto :goto_7

    :cond_18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_7
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v7, v1

    aput-object v3, v7, v2

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2, v4, v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v0, 0x11

    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v0, v5

    :goto_8
    invoke-super {p0, v0}, Lˉˆ/ᵔﹳ;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
