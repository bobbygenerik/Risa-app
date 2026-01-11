.class public final Lcom/google/android/gms/internal/play_billing/ʻˋ;
.super Lcom/google/android/gms/internal/play_billing/ˑʼ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/ˑʼ;-><init>([B)V

    const/4 v0, 0x0

    array-length p2, p2

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/ˑʼ;->ˑﹳ(III)I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ʻˋ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final ˈ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʻˋ;->ˈٴ:I

    return v0
.end method

.method public final ⁱˊ(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑʼ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final ﹳٴ(I)B
    .locals 4

    .prologue
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/ʻˋ;->ˈٴ:I

    sub-int v0, v1, v0

    or-int/2addr v0, p1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-gez p1, :cond_0

    const-string v1, "Index < 0: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "Index > length: "

    const-string v3, ", "

    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˑʼ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method
