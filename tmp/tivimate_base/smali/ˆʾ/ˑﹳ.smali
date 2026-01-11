.class public final Lˆʾ/ˑﹳ;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final synthetic ـˏ:I


# instance fields
.field public ʼˈ:Z

.field public ʽʽ:Landroid/graphics/drawable/Drawable;

.field public ʾˋ:Lˆʾ/ⁱˊ;

.field public ˆﾞ:Lˆʾ/ⁱˊ;

.field public ˈʿ:Lˆʾ/ⁱˊ;

.field public ˈٴ:Landroid/graphics/drawable/Drawable;

.field public ˉٴ:Z

.field public ˊʻ:Z

.field public ˊˋ:I

.field public ˋᵔ:I

.field public ˑٴ:Lˈˆ/ﾞᴵ;

.field public ٴʼ:J

.field public ٴᵢ:I

.field public ᴵˊ:Landroid/graphics/Rect;

.field public ᴵᵔ:I

.field public ᵎˊ:J

.field public ᵎⁱ:Landroidx/leanback/widget/ᵔʾ;

.field public ᵔי:Lʻˈ/ʽ;

.field public ᵔٴ:Z


# direct methods
.method public constructor <init>(Lˆʾ/ⁱˊ;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    const/4 v0, -0x1

    iput v0, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    iput v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    iput v0, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    new-instance v0, Lˆʾ/ⁱˊ;

    invoke-direct {v0, p1, p0, p2}, Lˆʾ/ⁱˊ;-><init>(Lˆʾ/ⁱˊ;Lˆʾ/ˑﹳ;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ʼˎ(Lˆʾ/ⁱˊ;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆʾ/ˑﹳ;->onStateChange([I)Z

    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->jumpToCurrentState()V

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lˆʾ/ˑﹳ;
    .locals 24

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "animated-selector"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v5, Lˆʾ/ˑﹳ;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lˆʾ/ˑﹳ;-><init>(Lˆʾ/ⁱˊ;Landroid/content/res/Resources;)V

    sget-object v7, Lٴﹶ/ⁱˊ;->ﹳٴ:[I

    invoke-static {v1, v4, v3, v7}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v5, v9, v8}, Lˆʾ/ˑﹳ;->setVisible(ZZ)Z

    iget-object v9, v5, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    iget v10, v9, Lˆʾ/ⁱˊ;->ˈ:I

    invoke-static {v7}, Lٴﹶ/ﹳٴ;->ⁱˊ(Landroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v9, Lˆʾ/ⁱˊ;->ˈ:I

    iget-boolean v10, v9, Lˆʾ/ⁱˊ;->ʼˎ:Z

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Lˆʾ/ⁱˊ;->ʼˎ:Z

    iget-boolean v10, v9, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    const/4 v12, 0x3

    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    iget v10, v9, Lˆʾ/ⁱˊ;->ʼʼ:I

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Lˆʾ/ⁱˊ;->ʼʼ:I

    const/4 v10, 0x5

    iget v14, v9, Lˆʾ/ⁱˊ;->ᵢˏ:I

    invoke-virtual {v7, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Lˆʾ/ⁱˊ;->ᵢˏ:I

    iget-boolean v9, v9, Lˆʾ/ⁱˊ;->ـˆ:Z

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v5, v9}, Lˆʾ/ˑﹳ;->setDither(Z)V

    iget-object v9, v5, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    if-eqz v1, :cond_1

    iput-object v1, v9, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v14, :cond_0

    const/16 v14, 0xa0

    :cond_0
    iget v15, v9, Lˆʾ/ⁱˊ;->ʽ:I

    iput v14, v9, Lˆʾ/ⁱˊ;->ʽ:I

    if-eq v15, v14, :cond_2

    iput-boolean v10, v9, Lˆʾ/ⁱˊ;->ˉʿ:Z

    iput-boolean v10, v9, Lˆʾ/ⁱˊ;->ˆʾ:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/2addr v7, v8

    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v8, :cond_1a

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v7, :cond_3

    if-eq v9, v12, :cond_1a

    :cond_3
    if-eq v9, v11, :cond_4

    goto :goto_1

    :cond_4
    if-le v14, v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v14, "item"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v14, -0x1

    if-eqz v9, :cond_f

    sget-object v9, Lٴﹶ/ⁱˊ;->ⁱˊ:[I

    invoke-static {v1, v4, v3, v9}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    invoke-virtual {v9, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-lez v14, :cond_6

    invoke-static {}, Lˉˆ/ʼᵢ;->ˈ()Lˉˆ/ʼᵢ;

    move-result-object v6

    invoke-virtual {v6, v0, v14}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    new-array v14, v9, [I

    move v8, v10

    move v12, v8

    :goto_3
    if-ge v12, v9, :cond_9

    invoke-interface {v3, v12}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v11

    if-eqz v11, :cond_8

    const v13, 0x10100d0

    if-eq v11, v13, :cond_8

    const v13, 0x1010199

    if-eq v11, v13, :cond_8

    add-int/lit8 v13, v8, 0x1

    invoke-interface {v3, v12, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_4

    :cond_7
    neg-int v11, v11

    :goto_4
    aput v11, v14, v8

    move v8, v13

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x4

    goto :goto_3

    :cond_9
    invoke-static {v14, v8}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v8

    const-string v9, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v6, :cond_d

    :goto_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v11, 0x4

    if-ne v6, v11, :cond_a

    goto :goto_5

    :cond_a
    const/4 v11, 0x2

    if-ne v6, v11, :cond_c

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "vector"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lʻˈ/ﹳᐧ;

    invoke-direct {v6}, Lʻˈ/ﹳᐧ;-><init>()V

    invoke-virtual {v6, v1, v2, v3, v4}, Lʻˈ/ﹳᐧ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_6

    :cond_b
    invoke-static/range {p1 .. p4}, Lٴﹶ/ﹳٴ;->ﹳٴ(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_6

    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    iget-object v9, v5, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    invoke-virtual {v9, v6}, Lˆʾ/ⁱˊ;->ﹳٴ(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    iget-object v11, v9, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    aput-object v8, v11, v6

    iget-object v8, v9, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lיـ/יـ;->ˑﹳ(ILjava/lang/Object;)V

    :goto_7
    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_8
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "transition"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Lٴﹶ/ⁱˊ;->ʽ:[I

    invoke-static {v1, v4, v3, v6}, Lˉٴ/ⁱˊ;->ᵔᵢ(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v6, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_10

    invoke-static {}, Lˉˆ/ʼᵢ;->ˈ()Lˉˆ/ʼᵢ;

    move-result-object v13

    invoke-virtual {v13, v0, v12}, Lˉˆ/ʼᵢ;->ﾞᴵ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_9
    const/4 v13, 0x3

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    goto :goto_9

    :goto_a
    invoke-virtual {v6, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const-string v6, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v12, :cond_14

    :goto_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v9, 0x4

    if-ne v12, v9, :cond_11

    const/4 v9, 0x1

    goto :goto_b

    :cond_11
    const/4 v9, 0x2

    if-ne v12, v9, :cond_13

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v9, "animated-vector"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v12, Lʻˈ/ﾞᴵ;

    invoke-direct {v12, v0, v10}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v1, v2, v3, v4}, Lʻˈ/ﾞᴵ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_c

    :cond_12
    invoke-static/range {p1 .. p4}, Lٴﹶ/ﹳٴ;->ﹳٴ(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_c

    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_c
    if-eqz v12, :cond_18

    if-eq v8, v14, :cond_17

    if-eq v11, v14, :cond_17

    iget-object v6, v5, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    invoke-virtual {v6, v12}, Lˆʾ/ⁱˊ;->ﹳٴ(Landroid/graphics/drawable/Drawable;)I

    move-result v9

    int-to-long v13, v8

    const/16 v8, 0x20

    shl-long v16, v13, v8

    int-to-long v11, v11

    move/from16 v19, v8

    move/from16 v18, v9

    or-long v8, v16, v11

    if-eqz v15, :cond_15

    const-wide v16, 0x200000000L

    goto :goto_d

    :cond_15
    const-wide/16 v16, 0x0

    :goto_d
    iget-object v10, v6, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    move/from16 v0, v18

    int-to-long v0, v0

    or-long v20, v0, v16

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v8, v9, v0}, Lיـ/ʼˎ;->ﹳٴ(JLjava/lang/Long;)V

    if-eqz v15, :cond_16

    shl-long v0, v11, v19

    or-long/2addr v0, v13

    iget-object v6, v6, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    const-wide v8, 0x100000000L

    or-long v8, v22, v8

    or-long v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v0, v1, v8}, Lיـ/ʼˎ;->ﹳٴ(JLjava/lang/Long;)V

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_1a
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v5, v0}, Lˆʾ/ˑﹳ;->onStateChange([I)Z

    return-object v5

    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid animated-selector tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-virtual {p0, p1}, Lˆʾ/ˑﹳ;->ⁱˊ(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆʾ/ˑﹳ;->onStateChange([I)Z

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    invoke-virtual {v1}, Lˆʾ/ⁱˊ;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 7

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ʽﹳ:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lˆʾ/ⁱˊ;->ʻٴ:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ʽ()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ʽﹳ:Z

    iget v2, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v3, v0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-nez v6, :cond_1

    iput-boolean v4, v0, Lˆʾ/ⁱˊ;->ʻٴ:Z

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ʻٴ:Z

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lˆʾ/ⁱˊ;->ˈ:I

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ᴵˊ:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ⁱˊ()V

    :cond_0
    iget v0, v0, Lˆʾ/ⁱˊ;->ˉˆ:I

    return v0

    :cond_1
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ⁱˊ()V

    :cond_0
    iget v0, v0, Lˆʾ/ⁱˊ;->ᵔʾ:I

    return v0

    :cond_1
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ⁱˊ()V

    :cond_0
    iget v0, v0, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    return v0

    :cond_1
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ⁱˊ()V

    :cond_0
    iget v0, v0, Lˆʾ/ⁱˊ;->ʼᐧ:I

    return v0

    :cond_1
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getOpacity()I
    .locals 7

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v2, v0, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    if-eqz v2, :cond_1

    iget v0, v0, Lˆʾ/ⁱˊ;->יـ:I

    return v0

    :cond_1
    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ʽ()V

    iget v2, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v3, v0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    if-lez v2, :cond_2

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v1, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput v1, v0, Lˆʾ/ⁱˊ;->יـ:I

    iput-boolean v4, v0, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    :cond_4
    :goto_1
    return v1
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 10

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ʼˎ:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    if-nez v1, :cond_8

    iget-boolean v5, v0, Lˆʾ/ⁱˊ;->ˆʾ:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ʽ()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v6, v0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    move v7, v4

    :goto_0
    if-ge v7, v5, :cond_7

    aget-object v8, v6, v7

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    if-le v8, v9, :cond_3

    iput v8, v3, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_4

    iput v8, v3, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_5

    iput v8, v3, Landroid/graphics/Rect;->right:I

    :cond_5
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_6

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    iput-boolean v2, v0, Lˆʾ/ⁱˊ;->ˆʾ:Z

    iput-object v3, v0, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    goto :goto_2

    :cond_8
    :goto_1
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    or-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_b

    move v4, v2

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_3

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v4

    :cond_b
    :goto_3
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v0, v0, Lˆʾ/ⁱˊ;->ʾˋ:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_c
    return v4
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ˏי:Z

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v0, v0, Lˆʾ/ⁱˊ;->ʾˋ:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->ˑﹳ()V

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˈˆ/ﾞᴵ;->ﹳـ()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    iget v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ᵔᵢ(I)Z

    const/4 v0, -0x1

    iput v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    iput v0, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˆʾ/ˑﹳ;->ʼˈ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->ᵎﹶ()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v1}, Lיـ/ʼˎ;->ˈ()Lיـ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-virtual {v1}, Lיـ/יـ;->ⁱˊ()Lיـ/יـ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ˑﹳ;->ʼˈ:Z

    :cond_0
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v1, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    iget v2, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v3, v0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v3, v4

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v6

    if-ne v4, v1, :cond_0

    move v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput p1, v0, Lˆʾ/ⁱˊ;->ʾᵎ:I

    return v5
.end method

.method public final onLevelChange(I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onStateChange([I)Z
    .locals 14

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    invoke-virtual {v0, p1}, Lˆʾ/ⁱˊ;->ﾞᴵ([I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v1}, Lˆʾ/ⁱˊ;->ﾞᴵ([I)I

    move-result v1

    :goto_0
    iget v0, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_b

    iget-object v3, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    if-ne v1, v0, :cond_2

    invoke-virtual {v3}, Lˈˆ/ﾞᴵ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lˈˆ/ﾞᴵ;->ˑٴ()V

    iget v0, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    iput v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    iput v1, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    goto/16 :goto_4

    :cond_2
    iget v0, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    invoke-virtual {v3}, Lˈˆ/ﾞᴵ;->ﹳـ()V

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    const/4 v3, -0x1

    iput v3, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    iput v3, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    iget-object v3, p0, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    invoke-virtual {v3, v0}, Lˆʾ/ⁱˊ;->ˑﹳ(I)I

    move-result v5

    invoke-virtual {v3, v1}, Lˆʾ/ⁱˊ;->ˑﹳ(I)I

    move-result v6

    if-eqz v6, :cond_a

    if-nez v5, :cond_4

    goto/16 :goto_3

    :cond_4
    int-to-long v7, v5

    const/16 v5, 0x20

    shl-long/2addr v7, v5

    int-to-long v5, v6

    or-long/2addr v5, v7

    iget-object v7, v3, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v7, v5, v6}, Lיـ/ʼˎ;->ﾞᴵ(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    if-gez v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v8, v3, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v8, v5, v6}, Lיـ/ʼˎ;->ﾞᴵ(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v10, 0x200000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    move v8, v4

    goto :goto_1

    :cond_6
    move v8, v2

    :goto_1
    invoke-virtual {p0, v7}, Lˆʾ/ˑﹳ;->ᵔᵢ(I)Z

    iget-object v7, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    instance-of v9, v7, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v9, :cond_8

    iget-object v3, v3, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v3, v5, v6}, Lיـ/ʼˎ;->ﾞᴵ(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v12, 0x100000000L

    and-long/2addr v5, v12

    cmp-long v3, v5, v10

    if-eqz v3, :cond_7

    move v2, v4

    :cond_7
    new-instance v3, Lˆʾ/ʽ;

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v7, v2, v8}, Lˆʾ/ʽ;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_2

    :cond_8
    instance-of v3, v7, Lʻˈ/ﾞᴵ;

    if-eqz v3, :cond_9

    new-instance v3, Lˆʾ/ﹳٴ;

    check-cast v7, Lʻˈ/ﾞᴵ;

    const/4 v2, 0x1

    invoke-direct {v3, v7, v2}, Lˆʾ/ﹳٴ;-><init>(Landroid/graphics/drawable/Animatable;I)V

    goto :goto_2

    :cond_9
    instance-of v3, v7, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_a

    new-instance v3, Lˆʾ/ﹳٴ;

    check-cast v7, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    invoke-direct {v3, v7, v2}, Lˆʾ/ﹳٴ;-><init>(Landroid/graphics/drawable/Animatable;I)V

    :goto_2
    invoke-virtual {v3}, Lˈˆ/ﾞᴵ;->ـˏ()V

    iput-object v3, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    iput v0, p0, Lˆʾ/ˑﹳ;->ˊˋ:I

    iput v1, p0, Lˆʾ/ˑﹳ;->ˋᵔ:I

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Lˆʾ/ˑﹳ;->ᵔᵢ(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_4
    move v2, v4

    :cond_b
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr p1, v2

    return p1

    :cond_c
    return v2
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˆʾ/ˑﹳ;->ˊʻ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ˑﹳ;->ˊʻ:Z

    iput p1, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lˆʾ/ˑﹳ;->ﹳٴ(Z)V

    :cond_2
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ʾˋ:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lˆʾ/ⁱˊ;->ʾˋ:Z

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ʽʽ:Z

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ᴵˊ:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˆʾ/ⁱˊ;->ᴵˊ:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final setDither(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v0, Lˆʾ/ⁱˊ;->ـˆ:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lˆʾ/ⁱˊ;->ـˆ:Z

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ᴵˊ:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ᴵˊ:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˆʾ/ˑﹳ;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ˊʻ:Z

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ˈٴ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˆʾ/ⁱˊ;->ˈٴ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˆʾ/ⁱˊ;->ٴᵢ:Z

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˆʾ/ⁱˊ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lˆʾ/ˑﹳ;->ˆʾ(ZZ)Z

    move-result v0

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ˑٴ:Lˈˆ/ﾞᴵ;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lˈˆ/ﾞᴵ;->ـˏ()V

    return v0

    :cond_1
    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->jumpToCurrentState()V

    :cond_2
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final ʼˎ(Lˆʾ/ⁱˊ;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v0, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lˆʾ/ⁱˊ;->ˈ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ˈ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lˆʾ/ˑﹳ;->ˆﾞ:Lˆʾ/ⁱˊ;

    iput-object p1, p0, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    return-void
.end method

.method public final ˆʾ(ZZ)Z
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public final ˈ(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ᵔי:Lʻˈ/ʽ;

    if-nez v0, :cond_0

    new-instance v0, Lʻˈ/ʽ;

    invoke-direct {v0}, Lʻˈ/ʽ;-><init>()V

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ᵔי:Lʻˈ/ʽ;

    :cond_0
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ᵔי:Lʻˈ/ʽ;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iput-object v1, v0, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v1, v1, Lˆʾ/ⁱˊ;->ʼʼ:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lˆʾ/ˑﹳ;->ˊʻ:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v2, v1, Lˆʾ/ⁱˊ;->ʽʽ:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lˆʾ/ⁱˊ;->ᴵˊ:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, v1, Lˆʾ/ⁱˊ;->ˊʻ:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lˆʾ/ⁱˊ;->ˈٴ:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v2, v1, Lˆʾ/ⁱˊ;->ٴᵢ:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lˆʾ/ⁱˊ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v1, Lˆʾ/ⁱˊ;->ـˆ:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget-boolean v1, v1, Lˆʾ/ⁱˊ;->ʾˋ:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ᴵˊ:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v1, p0, Lˆʾ/ˑﹳ;->ᵔי:Lʻˈ/ʽ;

    iget-object v2, v1, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable$Callback;

    iput-object v0, v1, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :goto_2
    iget-object v2, p0, Lˆʾ/ˑﹳ;->ᵔי:Lʻˈ/ʽ;

    iget-object v3, v2, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/Drawable$Callback;

    iput-object v0, v2, Lʻˈ/ʽ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v1
.end method

.method public final ˑﹳ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Lˆʾ/ˑﹳ;->ˊʻ:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-wide v2, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iput-wide v4, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    move v0, v1

    :cond_2
    iget-wide v2, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iput-wide v4, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public final ᵎﹶ()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˆʾ/ˑﹳ;->ᵔٴ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lˆʾ/ˑﹳ;->ﾞᴵ()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˆﾞ:Lˆʾ/ⁱˊ;

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v1}, Lיـ/ʼˎ;->ˈ()Lיـ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-virtual {v1}, Lיـ/יـ;->ⁱˊ()Lיـ/יـ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ˑﹳ;->ᵔٴ:Z

    :cond_0
    return-object p0
.end method

.method public final ᵔᵢ(I)Z
    .locals 9

    .prologue
    iget v0, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v0, v0, Lˆʾ/ⁱˊ;->ᵢˏ:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v0, v0, Lˆʾ/ⁱˊ;->ᵢˏ:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v1, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    if-ge p1, v1, :cond_6

    invoke-virtual {v0, p1}, Lˆʾ/ⁱˊ;->ˈ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    if-eqz v0, :cond_7

    iget-object p1, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget p1, p1, Lˆʾ/ⁱˊ;->ʼʼ:I

    if-lez p1, :cond_5

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    :cond_5
    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ˈ(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iput-object v4, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lˆʾ/ˑﹳ;->ٴᵢ:I

    :cond_7
    :goto_1
    iget-wide v0, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    cmp-long p1, v0, v5

    const/4 v0, 0x1

    if-nez p1, :cond_8

    iget-wide v1, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lˆʾ/ˑﹳ;->ᵎⁱ:Landroidx/leanback/widget/ᵔʾ;

    if-nez p1, :cond_9

    new-instance p1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v1, 0xf

    invoke-direct {p1, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lˆʾ/ˑﹳ;->ᵎⁱ:Landroidx/leanback/widget/ᵔʾ;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ﹳٴ(Z)V

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v0
.end method

.method public final ⁱˊ(Landroid/content/res/Resources$Theme;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lˆʾ/ⁱˊ;->ʽ()V

    iget v1, v0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v2, v0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v5, v0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, v0, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_2

    const/16 p1, 0xa0

    :cond_2
    iget v1, v0, Lˆʾ/ⁱˊ;->ʽ:I

    iput p1, v0, Lˆʾ/ⁱˊ;->ʽ:I

    if-eq v1, p1, :cond_3

    iput-boolean v3, v0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    iput-boolean v3, v0, Lˆʾ/ⁱˊ;->ˆʾ:Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ﹳٴ(Z)V
    .locals 13

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ˑﹳ;->ˊʻ:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lˆʾ/ˑﹳ;->ʽʽ:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    iget-wide v9, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    cmp-long v11, v9, v6

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    iget v9, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-wide v6, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v9, v9

    iget-object v10, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v10, v10, Lˆʾ/ⁱˊ;->ʼʼ:I

    div-int/2addr v9, v10

    rsub-int v9, v9, 0xff

    iget v10, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Lˆʾ/ˑﹳ;->ٴʼ:J

    :cond_2
    :goto_0
    move v3, v8

    :goto_1
    iget-object v9, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    iget-wide v10, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    invoke-virtual {v9, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lˆʾ/ˑﹳ;->ˈٴ:Landroid/graphics/drawable/Drawable;

    iput-wide v6, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Lˆʾ/ˑﹳ;->ʾˋ:Lˆʾ/ⁱˊ;

    iget v4, v4, Lˆʾ/ⁱˊ;->ᵢˏ:I

    div-int/2addr v3, v4

    iget v4, p0, Lˆʾ/ˑﹳ;->ᴵᵔ:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_4
    iput-wide v6, p0, Lˆʾ/ˑﹳ;->ᵎˊ:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Lˆʾ/ˑﹳ;->ᵎⁱ:Landroidx/leanback/widget/ᵔʾ;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public final ﾞᴵ()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˆʾ/ˑﹳ;->ˉٴ:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lˆʾ/ⁱˊ;

    iget-object v1, p0, Lˆʾ/ˑﹳ;->ˈʿ:Lˆʾ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lˆʾ/ⁱˊ;-><init>(Lˆʾ/ⁱˊ;Lˆʾ/ˑﹳ;Landroid/content/res/Resources;)V

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    invoke-virtual {v1}, Lיـ/ʼˎ;->ˈ()Lיـ/ʼˎ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    iget-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-virtual {v1}, Lיـ/יـ;->ⁱˊ()Lיـ/יـ;

    move-result-object v1

    iput-object v1, v0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-virtual {p0, v0}, Lˆʾ/ˑﹳ;->ʼˎ(Lˆʾ/ⁱˊ;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ˑﹳ;->ˉٴ:Z

    :cond_0
    return-object p0
.end method
