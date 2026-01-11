.class public final Lˎᴵ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iput-object p1, p0, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p3}, Lˎᴵ/ﹳٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lˎᴵ/ﹳٴ;Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iput-object v0, p0, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/י;->ـˆ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iput-object v0, p0, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, p1, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/י;->ـˆ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lˎᴵ/ﹳٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p2}, Lˎᴵ/ﹳٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only make child SmbPath of fully specified SmbPath"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ﹳٴ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/י;->ـˆ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˎᴵ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˎᴵ/ﹳٴ;

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v2, v3}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v2, v3}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object p1, p1, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v2, p1}, Lᴵʿ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lˎᴵ/ﹳٴ;->ⁱˊ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˎᴵ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᴵ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const-string v4, "\\"

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/י;->ـˆ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
