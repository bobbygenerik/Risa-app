.class public final Lʼٴ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼٴ/ᵢˏ;->ʾˋ:I

    iput-object p2, p0, Lʼٴ/ᵢˏ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    iget p1, p0, Lʼٴ/ᵢˏ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lʼٴ/ᵢˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ᵔﹳ;

    sget v0, Lʼﾞ/ﹳᐧ;->ˑﹳ:I

    sget-object v0, Lʼﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lʼﾞ/ᵎﹶ;

    if-eqz v1, :cond_0

    check-cast v0, Lʼﾞ/ᵎﹶ;

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lʼﾞ/ﾞᴵ;->ˈ:Landroid/os/IBinder;

    :goto_0
    iput-object v0, p1, Lʼﾞ/ᵔﹳ;->ᵎﹶ:Lʼﾞ/ᵎﹶ;

    :try_start_0
    iget-object p2, p1, Lʼﾞ/ᵔﹳ;->ˆʾ:Lʼﾞ/ˉˆ;

    iget-object v1, p1, Lʼﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lʼﾞ/ᵎﹶ;->ʼᐧ(Lʼﾞ/ˑﹳ;Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lʼﾞ/ᵔﹳ;->ﾞᴵ:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ROOM"

    const-string v0, "Cannot register multi-instance invalidation callback"

    nop

    :goto_1
    return-void

    :pswitch_0
    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lʼٴ/ᵢˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼٴ/ʾˋ;

    sget v0, Lcom/google/android/gms/internal/play_billing/ᵎﹶ;->ˑﹳ:I

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    if-eqz v2, :cond_2

    move-object p2, v1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/play_billing/ﾞᴵ;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p2, v1

    :goto_2
    iput-object p2, p1, Lʼٴ/ʾˋ;->ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    const/4 p2, 0x2

    iput p2, p1, Lʼٴ/ʾˋ;->ᵔי:I

    sget p2, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object p2, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/16 v0, 0x1a

    invoke-static {v0, p2}, Lʼٴ/ᴵˊ;->ʽ(ILcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    move-result-object p2

    const-string v0, "ApiSuccess should not be null"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p1, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-virtual {p1, p2, v0}, Lﹶﾞ/ⁱי;->ᵔٴ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    iget p1, p0, Lʼٴ/ᵢˏ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lʼٴ/ᵢˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ᵔﹳ;

    const/4 v0, 0x0

    iput-object v0, p1, Lʼﾞ/ᵔﹳ;->ᵎﹶ:Lʼﾞ/ᵎﹶ;

    return-void

    :pswitch_0
    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lʼٴ/ᵢˏ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼٴ/ʾˋ;

    const/4 v0, 0x0

    iput-object v0, p1, Lʼٴ/ʾˋ;->ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    const/4 v0, 0x0

    iput v0, p1, Lʼٴ/ʾˋ;->ᵔי:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
