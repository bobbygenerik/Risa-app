.class public final Lʾⁱ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﹳٴ:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lʾⁱ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ⁱˊ(Lʽⁱ/ﹳᐧ;)I
    .locals 5

    .prologue
    iget-object v0, p0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "image/bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "image/avif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_8

    goto :goto_1

    :pswitch_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p0, v0, :cond_8

    :goto_1
    :pswitch_2
    invoke-static {v2, v1, v1, v1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p0

    return p0

    :cond_8
    :goto_2
    invoke-static {v3, v1, v1, v1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p0

    return p0

    :cond_9
    :goto_3
    invoke-static {v1, v1, v1, v1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public ﹳٴ()Lˉˋ/ˆʾ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lʾⁱ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v2, Lˉˋ/ˆʾ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lˉˋ/ˉʿ;->ﹳٴ:Lٴﾞ/ˆʾ;

    invoke-static {v3}, Lʾﹶ/ﹳٴ;->ﹳٴ(Lʾﹶ/ⁱˊ;)Lᵎˋ/ﹳٴ;

    move-result-object v3

    iput-object v3, v2, Lˉˋ/ˆʾ;->ʾˋ:Lᵎˋ/ﹳٴ;

    new-instance v3, Lʾﹶ/ʽ;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lʾﹶ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lˉˋ/ˆʾ;->ᴵˊ:Lʾﹶ/ʽ;

    new-instance v1, Lᐧﹳ/ʽ;

    const/16 v4, 0xf

    invoke-direct {v1, v4, v3}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lˑʼ/ᵎˊ;

    const/16 v5, 0x1a

    invoke-direct {v4, v3, v5, v1}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4}, Lʾﹶ/ﹳٴ;->ﹳٴ(Lʾﹶ/ⁱˊ;)Lᵎˋ/ﹳٴ;

    move-result-object v1

    iput-object v1, v2, Lˉˋ/ˆʾ;->ʽʽ:Lᵎˋ/ﹳٴ;

    iget-object v1, v2, Lˉˋ/ˆʾ;->ᴵˊ:Lʾﹶ/ʽ;

    new-instance v3, Lˊⁱ/ˑﹳ;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v1}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    iput-object v3, v2, Lˉˋ/ˆʾ;->ˈٴ:Lˊⁱ/ˑﹳ;

    new-instance v3, Lʾˈ/ᵎˊ;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lʾˈ/ᵎˊ;-><init>(Lᵎˋ/ﹳٴ;I)V

    invoke-static {v3}, Lʾﹶ/ﹳٴ;->ﹳٴ(Lʾﹶ/ⁱˊ;)Lᵎˋ/ﹳٴ;

    move-result-object v1

    iget-object v3, v2, Lˉˋ/ˆʾ;->ˈٴ:Lˊⁱ/ˑﹳ;

    new-instance v4, Lـʾ/ᵔﹳ;

    const/16 v5, 0xa

    invoke-direct {v4, v3, v5, v1}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4}, Lʾﹶ/ﹳٴ;->ﹳٴ(Lʾﹶ/ⁱˊ;)Lᵎˋ/ﹳٴ;

    move-result-object v8

    iput-object v8, v2, Lˉˋ/ˆʾ;->ᴵᵔ:Lᵎˋ/ﹳٴ;

    new-instance v9, Lˋⁱ/ﾞᴵ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object v7, v2, Lˉˋ/ˆʾ;->ᴵˊ:Lʾﹶ/ʽ;

    new-instance v6, Lᵢ/ﹳٴ;

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object v9, v6

    move-object v1, v7

    iget-object v7, v2, Lˉˋ/ˆʾ;->ʾˋ:Lᵎˋ/ﹳٴ;

    move-object v10, v8

    iget-object v8, v2, Lˉˋ/ˆʾ;->ʽʽ:Lᵎˋ/ﹳٴ;

    new-instance v6, Landroidx/leanback/widget/ʻٴ;

    const/4 v12, 0x7

    move-object v11, v10

    invoke-direct/range {v6 .. v12}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v4, v6

    move-object v3, v8

    move-object v8, v10

    new-instance v6, Lˋٴ/ʽ;

    const/4 v14, 0x3

    move-object v12, v8

    move-object v13, v8

    move-object v11, v7

    move-object v10, v9

    move-object v7, v1

    move-object v9, v8

    move-object v8, v3

    invoke-direct/range {v6 .. v14}, Lˋٴ/ʽ;-><init>(Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;Lᵎˋ/ﹳٴ;I)V

    move-object v13, v6

    move-object v8, v9

    move-object v9, v10

    move-object v7, v11

    new-instance v6, Lˏˆ/ﹳٴ;

    const/16 v11, 0x1c

    move-object v10, v8

    invoke-direct/range {v6 .. v11}, Lˏˆ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v11, Lᵢ/ﹳٴ;

    const/16 v15, 0x9

    const/16 v16, 0x0

    move-object v12, v4

    move-object v14, v6

    invoke-direct/range {v11 .. v16}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {v11}, Lʾﹶ/ﹳٴ;->ﹳٴ(Lʾﹶ/ⁱˊ;)Lᵎˋ/ﹳٴ;

    move-result-object v1

    iput-object v1, v2, Lˉˋ/ˆʾ;->ˊʻ:Lᵎˋ/ﹳٴ;

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
