.class public final Lⁱי/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Lⁱי/ᴵᵔ;


# direct methods
.method public constructor <init>(Lⁱי/ᴵᵔ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʾˋ;->ﹳٴ:Lⁱי/ᴵᵔ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱי/ʾˋ;->ﹳٴ:Lⁱי/ᴵᵔ;

    iget-boolean v1, v0, Lⁱי/ᴵᵔ;->ᐧᴵ:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lⁱי/ᴵᵔ;->ᐧﾞ:Lⁱי/ˏᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lⁱי/ᴵᵔ;->ᐧﹶ:Z

    if-eqz v1, :cond_1

    :goto_0
    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lᐧˎ/ʻٴ;->ˑﹳ(I)Z

    :cond_1
    return-void
.end method
