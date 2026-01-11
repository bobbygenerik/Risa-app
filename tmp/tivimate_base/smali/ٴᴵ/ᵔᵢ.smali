.class public final Lٴᴵ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/List;

.field public final ˈ:Ljava/util/List;

.field public final ⁱˊ:J

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᴵ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iput-wide p2, p0, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ᵔᵢ;->ˈ:Ljava/util/List;

    return-void
.end method
