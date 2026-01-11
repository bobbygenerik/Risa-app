.class public final Lﹳʽ/ʼˎ;
.super Lﹳˋ/ʽʽ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Lﹳʽ/ᴵᵔ;

.field public final ᴵᵔ:Lʾᐧ/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹳʽ/ᴵᵔ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/ᴵˑ;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    iput-object p1, p0, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᴵﹳ/י;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    sget-object v1, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    invoke-static {p1}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object v1, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object v1, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unknown output prefix type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ﹳٴ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lﹳʽ/ʼˎ;->ᴵᵔ:Lʾᐧ/ﹳٴ;

    return-void
.end method

.method public static ˊʻ(Lﹳʽ/ᴵᵔ;)V
    .locals 0

    iget-object p0, p0, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Lᴵﹳ/ᴵˑ;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    return-void
.end method


# virtual methods
.method public final ˉˆ()Lٴʻ/ʼˎ;
    .locals 3

    new-instance v0, Lﹳʽ/ᵔᵢ;

    iget-object v1, p0, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v2, v1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-direct {v0, v2, v1}, Lﹳʽ/ᵔᵢ;-><init>(Ljava/lang/String;Lᴵﹳ/י;)V

    return-object v0
.end method
