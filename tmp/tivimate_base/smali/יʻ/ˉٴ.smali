.class public final Lיʻ/ˉٴ;
.super Lיʻ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Lיʻ/ٴʼ;

.field public final ˊʻ:Lʾᐧ/ﹳٴ;

.field public final ٴᵢ:Ljava/lang/Integer;

.field public final ᴵᵔ:Landroidx/leanback/widget/ˉˆ;


# direct methods
.method public constructor <init>(Lיʻ/ٴʼ;Landroidx/leanback/widget/ˉˆ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ˉٴ;->ˈٴ:Lיʻ/ٴʼ;

    iput-object p2, p0, Lיʻ/ˉٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iput-object p3, p0, Lיʻ/ˉٴ;->ˊʻ:Lʾᐧ/ﹳٴ;

    iput-object p4, p0, Lיʻ/ˉٴ;->ٴᵢ:Ljava/lang/Integer;

    return-void
.end method

.method public static ٴᵢ(Lיʻ/ٴʼ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ˉٴ;
    .locals 5

    .prologue
    iget-object v0, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾᐧ/ﹳٴ;

    iget-object v1, p0, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    sget-object v2, Lיʻ/ˆʾ;->ˉٴ:Lיʻ/ˆʾ;

    if-eq v1, v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "For given Variant "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " the value of idRequirement must be non-null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v3, v0, Lʾᐧ/ﹳٴ;->ﹳٴ:[B

    array-length v3, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    new-instance v0, Lיʻ/ˉٴ;

    if-ne v1, v2, :cond_4

    sget-object v1, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    goto :goto_2

    :cond_4
    sget-object v2, Lיʻ/ˆʾ;->ٴᵢ:Lיʻ/ˆʾ;

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object v1

    :goto_2
    invoke-direct {v0, p0, p1, v1, p2}, Lיʻ/ˉٴ;-><init>(Lיʻ/ٴʼ;Landroidx/leanback/widget/ˉˆ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown Variant: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "XAesGcmKey key must be constructed with key of length 32 bytes, not "

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

    iget-object v0, p0, Lיʻ/ˉٴ;->ˈٴ:Lיʻ/ٴʼ;

    return-object v0
.end method

.method public final ˊʻ()Lʾᐧ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lיʻ/ˉٴ;->ˊʻ:Lʾᐧ/ﹳٴ;

    return-object v0
.end method
