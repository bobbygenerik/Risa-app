.class public final Lיʻ/ᵎˊ;
.super Lיʻ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Lיʻ/ˆﾞ;

.field public final ˊʻ:Lʾᐧ/ﹳٴ;

.field public final ٴᵢ:Ljava/lang/Integer;

.field public final ᴵᵔ:Landroidx/leanback/widget/ˉˆ;


# direct methods
.method public constructor <init>(Lיʻ/ˆﾞ;Landroidx/leanback/widget/ˉˆ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ᵎˊ;->ˈٴ:Lיʻ/ˆﾞ;

    iput-object p2, p0, Lיʻ/ᵎˊ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iput-object p3, p0, Lיʻ/ᵎˊ;->ˊʻ:Lʾᐧ/ﹳٴ;

    iput-object p4, p0, Lיʻ/ᵎˊ;->ٴᵢ:Ljava/lang/Integer;

    return-void
.end method

.method public static ٴᵢ(Lיʻ/ˆʾ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ᵎˊ;
    .locals 4

    .prologue
    iget-object v0, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾᐧ/ﹳٴ;

    sget-object v1, Lיʻ/ˆʾ;->ᵎˊ:Lיʻ/ˆʾ;

    if-eq p0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "For given Variant "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " the value of idRequirement must be non-null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p0, v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v2, v0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_7

    new-instance v0, Lיʻ/ˆﾞ;

    invoke-direct {v0, p0}, Lיʻ/ˆﾞ;-><init>(Lיʻ/ˆʾ;)V

    new-instance v2, Lיʻ/ᵎˊ;

    if-ne p0, v1, :cond_4

    sget-object p0, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    goto :goto_2

    :cond_4
    sget-object v1, Lיʻ/ˆʾ;->ٴʼ:Lיʻ/ˆʾ;

    if-ne p0, v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lﹳʽ/יـ;->ﹳٴ(I)Lʾᐧ/ﹳٴ;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object v1, Lיʻ/ˆʾ;->ᵎⁱ:Lיʻ/ˆʾ;

    if-ne p0, v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object p0

    :goto_2
    invoke-direct {v2, v0, p1, p0, p2}, Lיʻ/ᵎˊ;-><init>(Lיʻ/ˆﾞ;Landroidx/leanback/widget/ˉˆ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V

    return-object v2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Variant: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ˉˆ()Lٴʻ/ʼˎ;
    .locals 1

    iget-object v0, p0, Lיʻ/ᵎˊ;->ˈٴ:Lיʻ/ˆﾞ;

    return-object v0
.end method

.method public final ˊʻ()Lʾᐧ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lיʻ/ᵎˊ;->ˊʻ:Lʾᐧ/ﹳٴ;

    return-object v0
.end method
