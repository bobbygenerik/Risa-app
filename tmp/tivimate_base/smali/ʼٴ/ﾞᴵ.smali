.class public final Lʼٴ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method public static ﹳٴ()Lʼٴ/ˑﹳ;
    .locals 2

    new-instance v0, Lʼٴ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lʼٴ/ˑﹳ;->ⁱˊ:I

    const-string v1, ""

    iput-object v1, v0, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget v0, p0, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    sget v1, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˈٴ;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʻٴ;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ˈٴ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ٴﹶ;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Debug Message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
