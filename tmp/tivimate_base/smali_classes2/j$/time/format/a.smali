.class public final Lj$/time/format/a;
.super Lj$/time/format/B;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lj$/time/format/A;


# direct methods
.method public constructor <init>(Lj$/time/format/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/A;

    return-void
.end method


# virtual methods
.method public final b(Lj$/time/chrono/j;Lj$/time/temporal/o;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/A;

    invoke-virtual {p1, p3, p4, p5}, Lj$/time/format/A;->a(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/o;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/A;

    invoke-virtual {p1, p2, p3, p4}, Lj$/time/format/A;->a(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lj$/time/chrono/j;Lj$/time/temporal/o;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0

    .prologue
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/A;

    iget-object p1, p1, Lj$/time/format/A;->b:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lj$/time/temporal/o;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0

    .prologue
    iget-object p1, p0, Lj$/time/format/a;->d:Lj$/time/format/A;

    iget-object p1, p1, Lj$/time/format/A;->b:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
