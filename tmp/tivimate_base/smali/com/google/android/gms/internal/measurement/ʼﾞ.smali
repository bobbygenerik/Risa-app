.class public final Lcom/google/android/gms/internal/measurement/ʼﾞ;
.super Lcom/google/android/gms/internal/measurement/ˎˏ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/ˎˏ;-><init>([B)V

    const/4 v0, 0x0

    array-length p2, p2

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ˎˏ;->ﾞᴵ(III)I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ʼﾞ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final ˈ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼﾞ;->ˈٴ:I

    return v0
.end method

.method public final ⁱˊ(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎˏ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final ﹳٴ(I)B
    .locals 5

    .prologue
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼﾞ;->ˈٴ:I

    sub-int v0, v1, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-gez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎˏ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method
