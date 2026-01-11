.class public final Lᵔﹶ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lʼᵔ/ˆʾ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lᵔﹶ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔﹶ/ﹳٴ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lᵔﹶ/ﹳٴ;->ﹳٴ:I

    iput-object p1, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᵔﹶ/ﹳٴ;->ʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 9

    .prologue
    iget v0, p0, Lᵔﹶ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    instance-of v0, p1, Lᵔﹶ/ʼʼ;

    if-eqz v0, :cond_0

    check-cast p1, Lᵔﹶ/ʼʼ;

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lᵔﹶ/ʼʼ;

    iget-object v1, p0, Lᵔﹶ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lיᐧ/ﾞᴵ;

    invoke-direct {v0, p1, v1}, Lᵔﹶ/ʼʼ;-><init>(Ljava/io/InputStream;Lיᐧ/ﾞᴵ;)V

    const/4 p1, 0x1

    move v1, p1

    move-object p1, v0

    :goto_0
    sget-object v2, Lʿٴ/ˑﹳ;->ʽʽ:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿٴ/ˑﹳ;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    new-instance v0, Lʿٴ/ˑﹳ;

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    :cond_1
    move-object v2, v0

    iput-object p1, v2, Lʿٴ/ˑﹳ;->ʾˋ:Lᵔﹶ/ʼʼ;

    new-instance v0, Lʿٴ/ٴﹶ;

    invoke-direct {v0, v2}, Lʿٴ/ٴﹶ;-><init>(Lʿٴ/ˑﹳ;)V

    new-instance v8, Lˑʼ/ᵎˊ;

    const/16 v3, 0x12

    invoke-direct {v8, p1, v3, v2}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :try_start_1
    iget-object v3, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Lᵔﹶ/ʼᐧ;

    new-instance v4, Lcom/parse/ٴʼ;

    iget-object v5, v3, Lᵔﹶ/ʼᐧ;->ˈ:Ljava/util/ArrayList;

    iget-object v6, v3, Lᵔﹶ/ʼᐧ;->ʽ:Lיᐧ/ﾞᴵ;

    invoke-direct {v4, v0, v5, v6}, Lcom/parse/ٴʼ;-><init>(Lʿٴ/ٴﹶ;Ljava/util/ArrayList;Lיᐧ/ﾞᴵ;)V

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lᵔﹶ/ʼᐧ;->ﹳٴ(Lᵔﹶ/ـˆ;IILʼᵔ/ᵔᵢ;Lᵔﹶ/ˉˆ;)Lᵔﹶ/ʽ;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lʿٴ/ˑﹳ;->ʽ()V

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lᵔﹶ/ʼʼ;->ᵎﹶ()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {v2}, Lʿٴ/ˑﹳ;->ʽ()V

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lᵔﹶ/ʼʼ;->ᵎﹶ()V

    :cond_3
    throw p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :pswitch_0
    move v5, p2

    move v6, p3

    move-object v7, p4

    check-cast p1, Landroid/net/Uri;

    iget-object p2, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lˉˈ/ﾞᴵ;

    invoke-virtual {p2, p1, v7}, Lˉˈ/ﾞᴵ;->ʽ(Landroid/net/Uri;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    check-cast p1, Lˉˈ/ˑﹳ;

    invoke-virtual {p1}, Lˉˈ/ˑﹳ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lᵔﹶ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast p2, Lיᐧ/ﹳٴ;

    invoke-static {p2, p1, v5, v6}, Lᵔﹶ/ﹳᐧ;->ﹳٴ(Lיᐧ/ﹳٴ;Landroid/graphics/drawable/Drawable;II)Lᵔﹶ/ʽ;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    move v5, p2

    move v6, p3

    move-object v7, p4

    iget-object p2, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lʼᵔ/ˆʾ;

    invoke-interface {p2, p1, v5, v6, v7}, Lʼᵔ/ˆʾ;->ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;

    move-result-object p1

    iget-object p2, p0, Lᵔﹶ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/Resources;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    new-instance p3, Lᵔﹶ/ʽ;

    invoke-direct {p3, p2, p1}, Lᵔﹶ/ʽ;-><init>(Landroid/content/res/Resources;Lʿʾ/ᵢˏ;)V

    move-object p1, p3

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹶ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    iget-object p1, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lᵔﹶ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    const-string p2, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lᵔﹶ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʼᵔ/ˆʾ;

    invoke-interface {v0, p1, p2}, Lʼᵔ/ˆʾ;->ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
