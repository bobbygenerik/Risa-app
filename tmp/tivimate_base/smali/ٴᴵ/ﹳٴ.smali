.class public final Lٴᴵ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/List;

.field public final ˈ:Ljava/util/List;

.field public final ˑﹳ:Ljava/util/List;

.field public final ⁱˊ:I

.field public final ﹳٴ:J

.field public final ﾞᴵ:Ljava/util/List;


# direct methods
.method public constructor <init>(JILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    iput p3, p0, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ﹳٴ;->ˈ:Ljava/util/List;

    invoke-static {p6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ﹳٴ;->ˑﹳ:Ljava/util/List;

    invoke-static {p7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ﹳٴ;->ﾞᴵ:Ljava/util/List;

    return-void
.end method
