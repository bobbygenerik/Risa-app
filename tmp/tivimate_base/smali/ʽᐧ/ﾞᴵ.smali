.class public final Lʽᐧ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʾˋ:J

.field public final ᴵˊ:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lʽᐧ/ﾞᴵ;->ʾˋ:J

    iput-object p3, p0, Lʽᐧ/ﾞᴵ;->ᴵˊ:[B

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lʽᐧ/ﾞᴵ;

    iget-wide v0, p0, Lʽᐧ/ﾞᴵ;->ʾˋ:J

    iget-wide v2, p1, Lʽᐧ/ﾞᴵ;->ʾˋ:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
