.class public final Lˎᵢ/ˉʿ;
.super Lˎᵢ/ʾˋ;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˎᵢ/ﹳᐧ;


# instance fields
.field public final ⁱˊ:Ljava/util/List;

.field public final ﹳٴ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object v0

    sput-object v0, Lˎᵢ/ˉʿ;->ʽ:Lˎᵢ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ˉʿ;->ﹳٴ:Ljava/util/List;

    invoke-static {p2}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lˎᵢ/ˉʿ;->ⁱˊ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ˈ(Lˊᐧ/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lˎᵢ/ˉʿ;->ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J

    return-void
.end method

.method public final ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J
    .locals 4

    .prologue
    if-eqz p2, :cond_0

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lˊᐧ/ᵎﹶ;->ˈ()Lˊᐧ/ﾞᴵ;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lˎᵢ/ˉʿ;->ﹳٴ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lˊᐧ/ﾞᴵ;->ʾﾞ(Ljava/lang/String;)V

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    iget-object v3, p0, Lˎᵢ/ˉʿ;->ⁱˊ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lˊᐧ/ﾞᴵ;->ʾﾞ(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v0, p1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {p1}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    return-wide v0

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final ⁱˊ()Lˎᵢ/ﹳᐧ;
    .locals 1

    sget-object v0, Lˎᵢ/ˉʿ;->ʽ:Lˎᵢ/ﹳᐧ;

    return-object v0
.end method

.method public final ﹳٴ()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lˎᵢ/ˉʿ;->ˑﹳ(Lˊᐧ/ᵎﹶ;Z)J

    move-result-wide v0

    return-wide v0
.end method
