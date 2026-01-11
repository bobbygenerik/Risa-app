.class public final Lˈˋ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ﹳᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ﹳᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ﹳᐧ;->ﹳٴ:Lˈˋ/ﹳᐧ;

    const-string v0, "processName"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳᐧ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "pid"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳᐧ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "importance"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳᐧ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "defaultProcess"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ﹳᐧ;->ˑﹳ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ʻᴵ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ʿᵢ;

    iget-object v0, p1, Lˈˋ/ʿᵢ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ﹳᐧ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﹳᐧ;->ʽ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ʿᵢ;->ⁱˊ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﹳᐧ;->ˈ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ʿᵢ;->ʽ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ﹳᐧ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-boolean p1, p1, Lˈˋ/ʿᵢ;->ˈ:Z

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;

    return-void
.end method
