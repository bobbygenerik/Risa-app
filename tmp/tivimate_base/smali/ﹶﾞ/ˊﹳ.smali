.class public final Lﹶﾞ/ˊﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹶﾞ/ʿʽ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lﹶﾞ/ʻᐧ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lﹶﾞ/ˊﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    return-void
.end method

.method public synthetic constructor <init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ˊﹳ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    iput-object p1, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    iget v0, p0, Lﹶﾞ/ˊﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    if-nez v1, :cond_0

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Failed to send consent settings to service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-interface {v1, v3}, Lﹶﾞ/ˉٴ;->ᵔʾ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to send consent settings to the service"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    if-nez v1, :cond_1

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-interface {v1, v3}, Lﹶﾞ/ˉٴ;->ˉʿ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    if-nez v1, :cond_2

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Failed to send app backgrounded"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v3, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-interface {v1, v3}, Lﹶﾞ/ˉٴ;->ٴᵢ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to send app backgrounded to the service"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    if-nez v1, :cond_3

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    :try_start_3
    iget-object v3, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    iget-object v4, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ٴʿ:Lﹶﾞ/ˈٴ;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1, v6, v3}, Lﹶﾞ/ʿʽ;->ˊˊ(Lﹶﾞ/ˉٴ;Lᵎˆ/ﹳٴ;Lﹶﾞ/ʻᐧ;)V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-interface {v1, v3}, Lﹶﾞ/ˉٴ;->ʽʽ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ᵎʻ;->ٴﹶ()Lﹶﾞ/ˈʿ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ˈʿ;->יˉ()Z

    iget-object v4, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v4, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    invoke-virtual {v0, v1, v6, v3}, Lﹶﾞ/ʿʽ;->ˊˊ(Lﹶﾞ/ˉٴ;Lᵎˆ/ﹳٴ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :goto_4
    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_3
    iget-object v0, p0, Lﹶﾞ/ˊﹳ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    if-nez v1, :cond_5

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Failed to reset data on the service: not connected to service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    :try_start_4
    iget-object v3, p0, Lﹶﾞ/ˊﹳ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-interface {v1, v3}, Lﹶﾞ/ˉٴ;->ᴵᵔ(Lﹶﾞ/ʻᐧ;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to reset data on the service: remote exception"

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
