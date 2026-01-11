.class public final Lᴵי/ᵔי;
.super Lᴵי/ˆﾞ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lᴵי/ʻˋ;


# direct methods
.method public constructor <init>(JLᴵי/ʻˋ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lᴵי/ˆﾞ;-><init>(J)V

    iput-object p3, p0, Lᴵי/ᵔי;->ʽʽ:Lᴵי/ʻˋ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lᴵי/ᵔי;->ʽʽ:Lᴵי/ʻˋ;

    invoke-virtual {v0}, Lᴵי/ʻˋ;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lᴵי/ˆﾞ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵי/ᵔי;->ʽʽ:Lᴵי/ʻˋ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
