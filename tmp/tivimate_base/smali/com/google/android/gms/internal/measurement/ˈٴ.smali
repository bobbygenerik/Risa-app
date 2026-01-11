.class public final Lcom/google/android/gms/internal/measurement/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ⁱˊ:I


# instance fields
.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˈٴ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/ˈٴ;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˈٴ;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ˈٴ;->ﹳٴ:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ˈٴ;->ﹳٴ:I

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    return v0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˈٴ;->ﹳٴ:I

    if-eqz v0, :cond_0

    const v1, -0x1cea24ec

    xor-int/2addr v0, v1

    const v1, 0x22cd8cdb

    mul-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˈٴ;->ﹳٴ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    const-string v0, "NO_CHECKS"

    goto :goto_0

    :cond_1
    const-string v0, "SKIP_SECURITY_CHECK"

    goto :goto_0

    :cond_2
    const-string v0, "SKIP_COMPLIANCE_CHECK"

    goto :goto_0

    :cond_3
    const-string v0, "ALL_CHECKS"

    :goto_0
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x49

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x5b

    const-string v2, "READ_AND_WRITE"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FileComplianceOptions{fileOwner=, hasDifferentDmaOwner=false, fileChecks="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
