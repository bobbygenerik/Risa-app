.class public final Lˈˋ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʼˎ:Lʿˑ/ⁱˊ;

.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˆʾ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ⁱˊ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ⁱˊ;->ﹳٴ:Lˈˋ/ⁱˊ;

    const-string v0, "pid"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "processName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "reasonCode"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "importance"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "pss"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "rss"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "timestamp"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    const-string v0, "traceFile"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ʼˎ:Lʿˑ/ⁱˊ;

    const-string v0, "buildIdMappingForArch"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ⁱˊ;->ˆʾ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˈˋ/ـᵎ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ˈٴ;

    iget v0, p1, Lˈˋ/ˈٴ;->ﹳٴ:I

    sget-object v1, Lˈˋ/ⁱˊ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ˈ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ˈٴ;->ʽ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ˈٴ;->ˈ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ˈٴ;->ˑﹳ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ˈٴ;->ﾞᴵ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ˈٴ;->ᵎﹶ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ʼˎ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ⁱˊ;->ˆʾ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
