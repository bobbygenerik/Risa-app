.class public final Lˈˋ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ˉˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ˉˆ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ˉˆ;->ﹳٴ:Lˈˋ/ˉˆ;

    const-string v0, "name"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˉˆ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "code"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˉˆ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "address"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ˉˆ;->ˈ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˈˋ/ʽⁱ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ﹳـ;

    iget-object v0, p1, Lˈˋ/ﹳـ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ˉˆ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˉˆ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ﹳـ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ˉˆ;->ˈ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ﹳـ;->ʽ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    return-void
.end method
