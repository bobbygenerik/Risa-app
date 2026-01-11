.class public final Lˈˋ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ﾞʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ﾞʻ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ﾞʻ;->ﹳٴ:Lˈˋ/ﾞʻ;

    const-string v0, "baseAddress"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﾞʻ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "size"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﾞʻ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "name"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﾞʻ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "uuid"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﾞʻ;->ˑﹳ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    check-cast p1, Lˈˋ/ˎᐧ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ʼˈ;

    iget-wide v0, p1, Lˈˋ/ʼˈ;->ﹳٴ:J

    sget-object v2, Lˈˋ/ﾞʻ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v2, v0, v1}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﾞʻ;->ʽ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ʼˈ;->ⁱˊ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﾞʻ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ʼˈ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    iget-object p1, p1, Lˈˋ/ʼˈ;->ˈ:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lˈˋ/ﹶˎ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lˈˋ/ﾞʻ;->ˑﹳ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
