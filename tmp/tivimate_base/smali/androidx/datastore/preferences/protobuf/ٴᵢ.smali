.class public final Landroidx/datastore/preferences/protobuf/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ˊʻ;
    .locals 1

    .prologue
    check-cast p0, Landroidx/datastore/preferences/protobuf/ˊʻ;

    check-cast p1, Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ˊʻ;->ʾˋ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˊʻ;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˊʻ;->ﹳٴ()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ˊʻ;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method
