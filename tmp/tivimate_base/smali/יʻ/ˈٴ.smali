.class public final Lיʻ/ˈٴ;
.super Lיʻ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Lיʻ/ᴵᵔ;

.field public final ˊʻ:Ljava/lang/Integer;

.field public final ᴵᵔ:Lʾᐧ/ﹳٴ;


# direct methods
.method public constructor <init>(Lיʻ/ᴵᵔ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ˈٴ;->ˈٴ:Lיʻ/ᴵᵔ;

    iput-object p2, p0, Lיʻ/ˈٴ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    iput-object p3, p0, Lיʻ/ˈٴ;->ˊʻ:Ljava/lang/Integer;

    return-void
.end method

.method public static ٴᵢ(Lיʻ/ᴵᵔ;Ljava/lang/Integer;)Lיʻ/ˈٴ;
    .locals 2

    .prologue
    iget-object v0, p0, Lיʻ/ᴵᵔ;->ﹳٴ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˊʻ:Lיʻ/ˆʾ;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lיʻ/ˆʾ;->ᴵᵔ:Lיʻ/ˆʾ;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object v0

    :goto_0
    new-instance v1, Lיʻ/ˈٴ;

    invoke-direct {v1, p0, v0, p1}, Lיʻ/ˈٴ;-><init>(Lיʻ/ᴵᵔ;Lʾᐧ/ﹳٴ;Ljava/lang/Integer;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

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

    iget-object v0, p0, Lיʻ/ˈٴ;->ˈٴ:Lיʻ/ᴵᵔ;

    return-object v0
.end method

.method public final ˊʻ()Lʾᐧ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lיʻ/ˈٴ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    return-object v0
.end method
