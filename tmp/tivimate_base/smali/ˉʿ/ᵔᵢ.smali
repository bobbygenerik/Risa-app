.class public final Lˉʿ/ᵔᵢ;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:[Ljava/lang/Class;

.field public static final ﾞᴵ:[Ljava/lang/Class;


# instance fields
.field public final ʽ:Landroid/content/Context;

.field public ˈ:Ljava/lang/Object;

.field public final ⁱˊ:[Ljava/lang/Object;

.field public final ﹳٴ:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lˉʿ/ᵔᵢ;->ˑﹳ:[Ljava/lang/Class;

    sput-object v0, Lˉʿ/ᵔᵢ;->ﾞᴵ:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lˉʿ/ᵔᵢ;->ʽ:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lˉʿ/ᵔᵢ;->ﹳٴ:[Ljava/lang/Object;

    iput-object v0, p0, Lˉʿ/ᵔᵢ;->ⁱˊ:[Ljava/lang/Object;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lˉʿ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .prologue
    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lᵔʾ/ˆʾ;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lˉʿ/ᵔᵢ;->ʽ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    instance-of v3, p2, Lᵔʾ/ˆʾ;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Lᵔʾ/ˆʾ;

    iget-boolean v4, v3, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lᵔʾ/ˆʾ;->ـˆ()V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lˉʿ/ᵔᵢ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    check-cast p2, Lᵔʾ/ˆʾ;

    invoke-virtual {p2}, Lᵔʾ/ˆʾ;->ʻٴ()V

    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :goto_1
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_2
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_3

    check-cast p2, Lᵔʾ/ˆʾ;

    invoke-virtual {p2}, Lᵔʾ/ˆʾ;->ʻٴ()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw p1
.end method

.method public final ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lˉʿ/ᵎﹶ;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Lˉʿ/ᵎﹶ;-><init>(Lˉʿ/ᵔᵢ;Landroid/view/Menu;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const-string v4, "menu"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting menu, got "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_18

    :goto_1
    const/4 v7, 0x0

    move v9, v7

    move v10, v9

    const/4 v11, 0x0

    :goto_2
    if-nez v9, :cond_17

    if-eq v3, v6, :cond_16

    const-string v12, "item"

    const-string v13, "group"

    const/4 v14, 0x3

    if-eq v3, v5, :cond_8

    if-eq v3, v14, :cond_3

    :cond_2
    :goto_3
    move-object/from16 v8, p1

    goto/16 :goto_4

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v8, p1

    move v10, v7

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iput v7, v2, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    iput v7, v2, Lˉʿ/ᵎﹶ;->ʽ:I

    iput v7, v2, Lˉʿ/ᵎﹶ;->ˈ:I

    iput v7, v2, Lˉʿ/ᵎﹶ;->ˑﹳ:I

    iput-boolean v6, v2, Lˉʿ/ᵎﹶ;->ﾞᴵ:Z

    iput-boolean v6, v2, Lˉʿ/ᵎﹶ;->ᵎﹶ:Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-boolean v3, v2, Lˉʿ/ᵎﹶ;->ᵔᵢ:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lˉʿ/ᵎﹶ;->ᵢˏ:Lᵔʾ/ˉʿ;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lᵔʾ/ˉʿ;->ⁱˊ:Landroid/view/ActionProvider;

    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v6, v2, Lˉʿ/ᵎﹶ;->ᵔᵢ:Z

    iget v3, v2, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    iget v12, v2, Lˉʿ/ᵎﹶ;->ʼˎ:I

    iget v13, v2, Lˉʿ/ᵎﹶ;->ˆʾ:I

    iget-object v14, v2, Lˉʿ/ᵎﹶ;->ٴﹶ:Ljava/lang/CharSequence;

    iget-object v15, v2, Lˉʿ/ᵎﹶ;->ﹳٴ:Landroid/view/Menu;

    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˉʿ/ᵎﹶ;->ⁱˊ(Landroid/view/MenuItem;)V

    goto :goto_3

    :cond_6
    iput-boolean v6, v2, Lˉʿ/ᵎﹶ;->ᵔᵢ:Z

    iget v3, v2, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    iget v12, v2, Lˉʿ/ᵎﹶ;->ʼˎ:I

    iget v13, v2, Lˉʿ/ᵎﹶ;->ˆʾ:I

    iget-object v14, v2, Lˉʿ/ᵎﹶ;->ٴﹶ:Ljava/lang/CharSequence;

    iget-object v15, v2, Lˉʿ/ᵎﹶ;->ﹳٴ:Landroid/view/Menu;

    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lˉʿ/ᵎﹶ;->ⁱˊ(Landroid/view/MenuItem;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v8, p1

    move v9, v6

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_8
    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iget-object v15, v0, Lˉʿ/ᵔᵢ;->ʽ:Landroid/content/Context;

    const/4 v8, 0x5

    const/4 v5, 0x4

    if-eqz v13, :cond_a

    sget-object v3, Lᵎﹶ/ﹳٴ;->ʼᐧ:[I

    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v2, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v2, Lˉʿ/ᵎﹶ;->ʽ:I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Lˉʿ/ᵎﹶ;->ˈ:I

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Lˉʿ/ᵎﹶ;->ˑﹳ:I

    const/4 v13, 0x2

    invoke-virtual {v3, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lˉʿ/ᵎﹶ;->ﾞᴵ:Z

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lˉʿ/ᵎﹶ;->ᵎﹶ:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_3

    :cond_a
    const/4 v13, 0x2

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    sget-object v3, Lᵎﹶ/ﹳٴ;->ᵔﹳ:[I

    invoke-virtual {v15, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v2, Lˉʿ/ᵎﹶ;->ʼˎ:I

    iget v12, v2, Lˉʿ/ᵎﹶ;->ʽ:I

    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v12, 0x6

    iget v13, v2, Lˉʿ/ᵎﹶ;->ˈ:I

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/high16 v13, -0x10000

    and-int/2addr v8, v13

    const v13, 0xffff

    and-int/2addr v12, v13

    or-int/2addr v8, v12

    iput v8, v2, Lˉʿ/ᵎﹶ;->ˆʾ:I

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v2, Lˉʿ/ᵎﹶ;->ٴﹶ:Ljava/lang/CharSequence;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v2, Lˉʿ/ᵎﹶ;->ﾞʻ:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v2, Lˉʿ/ᵎﹶ;->ˉʿ:I

    const/16 v8, 0x9

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    move v8, v7

    goto :goto_5

    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_5
    iput-char v8, v2, Lˉʿ/ᵎﹶ;->ᵔʾ:C

    const/16 v8, 0x10

    const/16 v12, 0x1000

    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v2, Lˉʿ/ᵎﹶ;->ˉˆ:I

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    move v8, v7

    goto :goto_6

    :cond_c
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v2, Lˉʿ/ᵎﹶ;->ʼᐧ:C

    const/16 v8, 0x14

    invoke-virtual {v3, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v2, Lˉʿ/ᵎﹶ;->ᵔﹳ:I

    const/16 v8, 0xb

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput v8, v2, Lˉʿ/ᵎﹶ;->ﹳᐧ:I

    goto :goto_7

    :cond_d
    iget v8, v2, Lˉʿ/ᵎﹶ;->ˑﹳ:I

    iput v8, v2, Lˉʿ/ᵎﹶ;->ﹳᐧ:I

    :goto_7
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v2, Lˉʿ/ᵎﹶ;->יـ:Z

    iget-boolean v8, v2, Lˉʿ/ᵎﹶ;->ﾞᴵ:Z

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lˉʿ/ᵎﹶ;->ˏי:Z

    iget-boolean v5, v2, Lˉʿ/ᵎﹶ;->ᵎﹶ:Z

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v2, Lˉʿ/ᵎﹶ;->ʽﹳ:Z

    const/16 v5, 0x15

    const/4 v8, -0x1

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Lˉʿ/ᵎﹶ;->ʻٴ:I

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ʼʼ:Ljava/lang/String;

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v2, Lˉʿ/ᵎﹶ;->ـˆ:I

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ʾᵎ:Ljava/lang/String;

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    move v12, v6

    goto :goto_8

    :cond_e
    move v12, v7

    :goto_8
    if-eqz v12, :cond_f

    iget v13, v2, Lˉʿ/ᵎﹶ;->ـˆ:I

    if-nez v13, :cond_f

    iget-object v13, v2, Lˉʿ/ᵎﹶ;->ʾᵎ:Ljava/lang/String;

    if-nez v13, :cond_f

    sget-object v12, Lˉʿ/ᵔᵢ;->ﾞᴵ:[Ljava/lang/Class;

    iget-object v13, v0, Lˉʿ/ᵔᵢ;->ⁱˊ:[Ljava/lang/Object;

    invoke-virtual {v2, v5, v12, v13}, Lˉʿ/ᵎﹶ;->ﹳٴ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᵔʾ/ˉʿ;

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ᵢˏ:Lᵔʾ/ˉʿ;

    goto :goto_9

    :cond_f
    if-eqz v12, :cond_10

    const-string v5, "SupportMenuInflater"

    const-string v12, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    nop

    :cond_10
    const/4 v5, 0x0

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ᵢˏ:Lᵔʾ/ˉʿ;

    :goto_9
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ʾˋ:Ljava/lang/CharSequence;

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ᴵˊ:Ljava/lang/CharSequence;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v8, v2, Lˉʿ/ᵎﹶ;->ˈٴ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v8}, Lˉˆ/ٴﹳ;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ˈٴ:Landroid/graphics/PorterDuff$Mode;

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ˈٴ:Landroid/graphics/PorterDuff$Mode;

    :goto_a
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v15, v8}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_b
    iput-object v8, v2, Lˉʿ/ᵎﹶ;->ʽʽ:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    iput-object v5, v2, Lˉʿ/ᵎﹶ;->ʽʽ:Landroid/content/res/ColorStateList;

    :goto_c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v7, v2, Lˉʿ/ᵎﹶ;->ᵔᵢ:Z

    move-object/from16 v8, p1

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iput-boolean v6, v2, Lˉʿ/ᵎﹶ;->ᵔᵢ:Z

    iget v3, v2, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    iget v8, v2, Lˉʿ/ᵎﹶ;->ʼˎ:I

    iget v12, v2, Lˉʿ/ᵎﹶ;->ˆʾ:I

    iget-object v13, v2, Lˉʿ/ᵎﹶ;->ٴﹶ:Ljava/lang/CharSequence;

    iget-object v14, v2, Lˉʿ/ᵎﹶ;->ﹳٴ:Landroid/view/Menu;

    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {v2, v8}, Lˉʿ/ᵎﹶ;->ⁱˊ(Landroid/view/MenuItem;)V

    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v1, v3}, Lˉʿ/ᵔᵢ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_d

    :cond_15
    move-object/from16 v8, p1

    move-object v11, v3

    move v10, v6

    :goto_d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    return-void

    :cond_18
    move-object/from16 v8, p1

    goto/16 :goto_0
.end method
