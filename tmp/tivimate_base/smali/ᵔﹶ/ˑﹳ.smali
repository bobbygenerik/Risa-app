.class public final Lᵔﹶ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᵔﹶ/ˑﹳ;->ﹳٴ:I

    iput-object p2, p0, Lᵔﹶ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 11

    .prologue
    iget v0, p0, Lᵔﹶ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lᵢٴ/ˈ;

    invoke-virtual {p1}, Lᵢٴ/ˈ;->ⁱˊ()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lᵔﹶ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lיᐧ/ﹳٴ;

    invoke-static {p1, p2}, Lᵔﹶ/ʽ;->ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lᵔﹶ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lᵔﹶ/ʼᐧ;

    new-instance v2, Lˑי/ʽ;

    iget-object v0, v1, Lᵔﹶ/ʼᐧ;->ˈ:Ljava/util/ArrayList;

    iget-object v3, v1, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v4, "Argument must not be null"

    invoke-static {v3, v4}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0, v4}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v2, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    new-instance v0, Lcom/bumptech/glide/load/data/ʼˎ;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/data/ʼˎ;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, v2, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    sget-object v6, Lᵔﹶ/ʼᐧ;->ٴﹶ:Lᵔﹶ/ᵔʾ;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lᵔﹶ/ʼᐧ;->ﹳٴ(Lᵔﹶ/ـˆ;IILʼᵔ/ᵔᵢ;Lᵔﹶ/ˉˆ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :pswitch_1
    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p1

    check-cast v6, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lᵔﹶ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lᵔﹶ/ʼᐧ;

    new-instance v1, Lᵢ/ﹳٴ;

    iget-object v7, v0, Lᵔﹶ/ʼᐧ;->ˈ:Ljava/util/ArrayList;

    iget-object v8, v0, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    const/16 v9, 0x13

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    sget-object v5, Lᵔﹶ/ʼᐧ;->ٴﹶ:Lᵔﹶ/ᵔʾ;

    invoke-virtual/range {v0 .. v5}, Lᵔﹶ/ʼᐧ;->ﹳٴ(Lᵔﹶ/ـˆ;IILʼᵔ/ᵔᵢ;Lᵔﹶ/ˉˆ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 2

    .prologue
    iget p2, p0, Lᵔﹶ/ˑﹳ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Lᵢٴ/ˈ;

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HONOR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    const-wide/32 v0, 0x20000000

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    :cond_1
    const-string p1, "robolectric"

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_1
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lᵔﹶ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᵔﹶ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
