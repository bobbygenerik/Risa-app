.class public final Lﹶٴ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# static fields
.field public static final ⁱˊ:Lﹶٴ/ᵔʾ;

.field public static final ﹳٴ:Lﹶٴ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶٴ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    new-instance v0, Lﹶٴ/ᵔʾ;

    const-string v1, "kotlin.Int"

    sget-object v2, Lˉﾞ/ⁱˊ;->ˑﹳ:Lˉﾞ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹶٴ/ᵔʾ;-><init>(Ljava/lang/String;Lˉﾞ/ʽ;)V

    sput-object v0, Lﹶٴ/ﾞᴵ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ʼᐧ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lﹶٴ/ﾞᴵ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lʻʻ/ʽ;->ʽ(I)V

    return-void
.end method
