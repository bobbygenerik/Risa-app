.class public final Lʻˈ/ﾞᴵ;
.super Lʻˈ/ʼˎ;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final synthetic ٴᵢ:I


# instance fields
.field public final ʽʽ:Landroid/content/Context;

.field public ˈٴ:Landroidx/leanback/widget/ᵔٴ;

.field public final ˊʻ:Lʻˈ/ʽ;

.field public final ᴵˊ:Lʻˈ/ˈ;

.field public ᴵᵔ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lʻˈ/ﾞᴵ;->ˈٴ:Landroidx/leanback/widget/ᵔٴ;

    iput-object p2, p0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    new-instance p2, Lʻˈ/ʽ;

    invoke-direct {p2, p0}, Lʻˈ/ʽ;-><init>(Lʻˈ/ﾞᴵ;)V

    iput-object p2, p0, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    iput-object p1, p0, Lʻˈ/ﾞᴵ;->ʽʽ:Landroid/content/Context;

    new-instance p1, Lʻˈ/ˈ;

    invoke-direct {p1}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v1, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v1, p1}, Lʻˈ/ﹳᐧ;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, v0, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lʻˈ/ˑﹳ;

    iget-object v1, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lʻˈ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lʻˈ/ﾞᴵ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    move-object/from16 v5, p2

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    move-object/from16 v5, p2

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    :goto_0
    iget-object v8, v1, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    if-eq v0, v7, :cond_e

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v6, :cond_1

    const/4 v9, 0x3

    if-eq v0, v9, :cond_e

    :cond_1
    const/4 v9, 0x2

    if-ne v0, v9, :cond_d

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "animated-vector"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x18

    const/4 v13, 0x0

    if-eqz v10, :cond_7

    sget-object v0, Lʻˈ/ﹳٴ;->ˑﹳ:[I

    invoke-static {v2, v4, v3, v0}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-virtual {v10, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v14, Lʻˈ/ﹳᐧ;->ٴʼ:Landroid/graphics/PorterDuff$Mode;

    const-string v14, "parser error"

    const-string v15, "VectorDrawableCompat"

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v11, :cond_2

    new-instance v9, Lʻˈ/ﹳᐧ;

    invoke-direct {v9}, Lʻˈ/ﹳᐧ;-><init>()V

    sget-object v11, Lˉٴ/ٴﹶ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v9, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lʻˈ/ᵔﹳ;

    iget-object v11, v9, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v11

    invoke-direct {v0, v11}, Lʻˈ/ᵔﹳ;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto :goto_5

    :cond_2
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v9, :cond_3

    if-eq v12, v7, :cond_3

    goto :goto_1

    :cond_3
    if-ne v12, v9, :cond_4

    new-instance v9, Lʻˈ/ﹳᐧ;

    invoke-direct {v9}, Lʻˈ/ﹳᐧ;-><init>()V

    invoke-virtual {v9, v2, v0, v11, v4}, Lʻˈ/ﹳᐧ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_5

    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v0, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    nop

    goto :goto_4

    :goto_3
    nop

    :goto_4
    const/4 v9, 0x0

    :goto_5
    iput-boolean v13, v9, Lʻˈ/ﹳᐧ;->ˊʻ:Z

    iget-object v0, v1, Lʻˈ/ﾞᴵ;->ˊʻ:Lʻˈ/ʽ;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, v8, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    if-eqz v0, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object v9, v8, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    :cond_6
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_e

    :cond_7
    const/4 v12, 0x0

    const-string v9, "target"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lʻˈ/ﹳٴ;->ﾞᴵ:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_c

    iget-object v14, v1, Lʻˈ/ﾞᴵ;->ʽʽ:Landroid/content/Context;

    if-eqz v14, :cond_b

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v11, :cond_8

    invoke-static {v14, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v10

    goto :goto_6

    :cond_8
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v16

    const-string v11, "Can\'t load animation resource ID #0x"

    :try_start_1
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lʻˈ/ﹳٴ;->ﹳٴ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_6
    iget-object v11, v8, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    iget-object v11, v11, Lʻˈ/ﹳᐧ;->ᴵˊ:Lʻˈ/ʼᐧ;

    iget-object v11, v11, Lʻˈ/ʼᐧ;->ⁱˊ:Lʻˈ/ˉˆ;

    iget-object v11, v11, Lʻˈ/ˉˆ;->ˉˆ:Lיـ/ˑﹳ;

    invoke-virtual {v11, v9}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v11, v8, Lʻˈ/ˈ;->ʽ:Ljava/util/ArrayList;

    if-nez v11, :cond_9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v8, Lʻˈ/ˈ;->ʽ:Ljava/util/ArrayList;

    new-instance v11, Lיـ/ˑﹳ;

    invoke-direct {v11, v13}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v11, v8, Lʻˈ/ˈ;->ˈ:Lיـ/ˑﹳ;

    :cond_9
    iget-object v11, v8, Lʻˈ/ˈ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Lʻˈ/ˈ;->ˈ:Lיـ/ˑﹳ;

    invoke-virtual {v8, v10, v9}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :goto_7
    move-object/from16 v12, v17

    goto :goto_c

    :goto_8
    move-object/from16 v12, v17

    goto :goto_a

    :goto_9
    move-object/from16 v12, v17

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    :goto_a
    :try_start_3
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_5
    move-exception v0

    :goto_b
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_c
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    throw v0

    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d
    :goto_e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_e
    iget-object v0, v8, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_f

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v8, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    :cond_f
    iget-object v0, v8, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    iget-object v2, v8, Lʻˈ/ˈ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0}, Lʻˈ/ﹳᐧ;->isStateful()Z

    move-result v0

    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public final onStateChange([I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ʼˎ;->setState([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setAlpha(I)V

    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setAutoMirrored(Z)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setTint(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/bumptech/glide/ˈ;->ˉٴ(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setTint(I)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lʻˈ/ﹳᐧ;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ﹳٴ:Lʻˈ/ﹳᐧ;

    invoke-virtual {v0, p1, p2}, Lʻˈ/ﹳᐧ;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v1, v0, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ʼˎ;->ʾˋ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ﾞᴵ;->ᴵˊ:Lʻˈ/ˈ;

    iget-object v0, v0, Lʻˈ/ˈ;->ⁱˊ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
