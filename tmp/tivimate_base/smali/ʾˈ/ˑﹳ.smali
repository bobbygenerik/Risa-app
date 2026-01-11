.class public final Lʾˈ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lʾˈ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ˑﹳ;->ﹳٴ:Lʾˈ/ˑﹳ;

    const-string v0, "performance"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˑﹳ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "crashlytics"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˑﹳ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "sessionSamplingRate"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lʾˈ/ˑﹳ;->ˈ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lʾˈ/ٴﹶ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˑﹳ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ٴﹶ;->ﹳٴ:Lʾˈ/ˆʾ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˑﹳ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lʾˈ/ٴﹶ;->ⁱˊ:Lʾˈ/ˆʾ;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lʾˈ/ˑﹳ;->ˈ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lʾˈ/ٴﹶ;->ʽ:D

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ʽ(Lʿˑ/ⁱˊ;D)Lʿˑ/ˈ;

    return-void
.end method
