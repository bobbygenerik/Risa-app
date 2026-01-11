.class public final Lﹶٴ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# static fields
.field public static final ⁱˊ:Lﹶٴ/ᵔʾ;

.field public static final ﹳٴ:Lﹶٴ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶٴ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    new-instance v0, Lﹶٴ/ᵔʾ;

    const-string v1, "kotlin.Long"

    sget-object v2, Lˉﾞ/ⁱˊ;->ﾞᴵ:Lˉﾞ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹶٴ/ᵔʾ;-><init>(Ljava/lang/String;Lˉﾞ/ʽ;)V

    sput-object v0, Lﹶٴ/ʼˎ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ﹳᐧ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lﹶٴ/ʼˎ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lʻʻ/ʽ;->ˈ(J)V

    return-void
.end method
