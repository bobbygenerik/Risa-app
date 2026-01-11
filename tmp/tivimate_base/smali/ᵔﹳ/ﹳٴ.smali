.class public final Lᵔﹳ/ﹳٴ;
.super Lᵔﹳ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public final ᴵᵔ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lᵔﹳ/ﾞᴵ;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Lᵔﹳ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;)Lᵔﹳ/ʽ;
    .locals 1

    iget-object v0, p0, Lᵔﹳ/ﹳٴ;->ᴵᵔ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔﹳ/ʽ;

    return-object p1
.end method
