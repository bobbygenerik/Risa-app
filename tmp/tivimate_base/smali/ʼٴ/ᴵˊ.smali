.class public abstract synthetic Lʼٴ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lʼٴ/ʽʽ;->ʼˎ:I

    return-void
.end method

.method public static ʽ(ILcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ﾞˏ;
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->יـ()Lcom/google/android/gms/internal/play_billing/ٴʿ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;I)V

    sget-object p0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to create logging payload"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;

    move-result-object v0

    iget v1, p2, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    iget-object v1, p2, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V

    iget p2, p2, Lʼٴ/ﾞᴵ;->ⁱˊ:I

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p2, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ʽﹳ()Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ˑﹳ(Lcom/google/android/gms/internal/play_billing/ˊˊ;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ˏי(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;I)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to create logging payload"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :goto_1
    const-string v1, "BillingLogger"

    const-string v2, "Unable to get truncated exception info"

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
