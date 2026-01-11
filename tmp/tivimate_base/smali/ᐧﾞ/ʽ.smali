.class public final Lᐧﾞ/ʽ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# static fields
.field public static final ᴵˊ:Lᐧﾞ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᐧﾞ/ʽ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˊʼ/ٴﹶ;-><init>(I)V

    sput-object v0, Lᐧﾞ/ʽ;->ᴵˊ:Lᐧﾞ/ʽ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lˊᐧ/ʽﹳ;

    check-cast p2, Lˊᐧ/ﾞʻ;

    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    move-result-object p1

    iget-object p1, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    new-instance p1, Lʿᵢ/ـﹶ;

    invoke-direct {p1}, Lʿᵢ/ـﹶ;-><init>()V

    return-object p1
.end method
