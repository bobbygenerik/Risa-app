.class public final Lʾˈ/ﹳـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lʾˈ/ﹶᐧ;

.field public final ﹳٴ:Lʾˈ/ˈˏ;


# direct methods
.method public constructor <init>(Lʾˈ/ˈˏ;Lʾˈ/ﹶᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ﹳـ;->ﹳٴ:Lʾˈ/ˈˏ;

    iput-object p2, p0, Lʾˈ/ﹳـ;->ⁱˊ:Lʾˈ/ﹶᐧ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʾˈ/ᵔٴ;)Lʾˈ/ᵔٴ;
    .locals 10

    .prologue
    iget-object v0, p0, Lʾˈ/ﹳـ;->ⁱˊ:Lʾˈ/ﹶᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lﹶˑ/ᵔﹳ;->ʿᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lʾˈ/ᵔٴ;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v5

    :goto_1
    if-eqz p1, :cond_2

    iget p1, p1, Lʾˈ/ᵔٴ;->ʽ:I

    add-int/lit8 v3, p1, 0x1

    :cond_2
    move v7, v3

    iget-object p1, p0, Lʾˈ/ﹳـ;->ﹳٴ:Lʾˈ/ˈˏ;

    invoke-virtual {p1}, Lʾˈ/ˈˏ;->ﹳٴ()Lʾˈ/ـﹶ;

    move-result-object p1

    iget-wide v8, p1, Lʾˈ/ـﹶ;->ⁱˊ:J

    invoke-direct/range {v4 .. v9}, Lʾˈ/ᵔٴ;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v4
.end method
