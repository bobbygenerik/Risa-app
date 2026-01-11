.class public final Lˑᵎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˑᵎ/ˈ;

.field public final ﹳٴ:Lʼﾞ/ˊʻ;


# direct methods
.method public constructor <init>(Lʼﾞ/ˊʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑᵎ/ᵎﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance p1, Lˑᵎ/ˈ;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lˑᵎ/ˈ;-><init>(I)V

    iput-object p1, p0, Lˑᵎ/ᵎﹶ;->ⁱˊ:Lˑᵎ/ˈ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    new-instance v0, Lˑᵎ/ʽ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lˑᵎ/ᵎﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
