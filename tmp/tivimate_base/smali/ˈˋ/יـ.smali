.class public final Lˈˋ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/יـ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/יـ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/יـ;->ﹳٴ:Lˈˋ/יـ;

    const-string v0, "batteryLevel"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "batteryVelocity"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "proximityOn"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "orientation"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "ramUsed"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "diskUsed"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/יـ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˈˋ/ᵎʿ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ᐧﾞ;

    iget-object v0, p1, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    sget-object v1, Lˈˋ/יـ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/יـ;->ʽ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/יـ;->ˈ:Lʿˑ/ⁱˊ;

    iget-boolean v1, p1, Lˈˋ/ᐧﾞ;->ʽ:Z

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/יـ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ᐧﾞ;->ˈ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/יـ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/יـ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    return-void
.end method
