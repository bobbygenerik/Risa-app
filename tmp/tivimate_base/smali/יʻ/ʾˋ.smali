.class public final Lיʻ/ʾˋ;
.super Lיʻ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Lיʻ/ᴵˊ;

.field public final ˊʻ:Ljava/lang/Integer;

.field public final ᴵᵔ:Lʾᐧ/ﹳٴ;


# direct methods
.method public constructor <init>(Lיʻ/ᴵˊ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    iput-object p2, p0, Lיʻ/ʾˋ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    iput-object p3, p0, Lיʻ/ʾˋ;->ˊʻ:Ljava/lang/Integer;

    return-void
.end method

.method public static ٴᵢ(Lיʻ/ᴵˊ;Ljava/lang/Integer;)Lיʻ/ʾˋ;
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ᴵˊ;->ⁱˊ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ـˆ:Lיʻ/ˆʾ;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lיʻ/ˆʾ;->ʾᵎ:Lיʻ/ˆʾ;

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    :goto_0
    new-instance v1, Lיʻ/ʾˋ;

    invoke-direct {v1, p0, v0, p1}, Lיʻ/ʾˋ;-><init>(Lיʻ/ᴵˊ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Variant: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ˉˆ()Lٴʻ/ʼˎ;
    .locals 1

    iget-object v0, p0, Lיʻ/ʾˋ;->ˈٴ:Lיʻ/ᴵˊ;

    return-object v0
.end method

.method public final ˊʻ()Lʾᐧ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lיʻ/ʾˋ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    return-object v0
.end method
